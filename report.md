# Report for extra implementations

Group Name: `JAN2026_group_75`

Team Members:
- Balaji Karedla (23B1029)
- Aayush Brokar (23B0944)

This is the report for the optimizations and checks we implemented in sclp

## Scoping and Variable Declaration

We added scoping to the compiler. We changed the grammar to allow declarations to be placed anywhere, and if-else, while and do-while to allow only `compound_statement`'s instead of `statement`'s to add a scope. 

When we see a new scope, we add a child scope to the parent scope and add the variables seen there, to the child scope. When we see a variable access, we lookup the symbol tables along the hierarchy to find the pointer to the entry and store it.

The scopes' hierarchy is stored as a stack of symbol table pointers.

The symbol table offsets, are reused for the variables in different scopes for better stack space usage. The stack offset of a procedure is chosen to be the maximum of the stack space taken up by all the scopes in the procedure.

This lets us redeclare variables in new scopes and declare variables anywhere in the code.

## Return path check warning

As the function calls can be abstracted out to be an out-flow and an in-flow, 

We first built a CFG for the code and removed all the unreachable code (code that can't be reached from the beginning of the procedure) from the TAC. One of the observations about the TAC built was that whenever we return in a non-void procedure, there is a `goto Label0` (say `Label0` is the return label of the procedure).

Something to notice is that there is no return in atleast one path if there is a path to reach `Label0` without reaching a `goto Label0`.

Post removing the unreachable code, as all the remaining lines are reachable, if there is any other statement than `goto Label0` just before `Label0`, it implies a path to the end of the function without seeing a return.

We checked the return this way.

## Deadcode Elimination using Intraprocedural Path-Sensitive Backward Data Flow Analysis

We also implemented deadcode elimination using a Backward Flow Analysis on the TAC IR.

As the TAC only has the following kind of statements:

1. `ASSIGN`
2. `FUNC_CALL`
3. `LABEL`
4. `GOTO`
5. `IF_GOTO`
6. `IO`
7. `RETURN`

We built the `GEN` and `KILL` and evaluated the `IN` and `OUT` sets.

We only remove the assignment statements which are not used later or overshadowed later.

We don't require a pointer analysis as there are no pointers in the language and `KILL` is atmost a singleton set for every statement. The `GEN` of the statements looks like:

1. `ASSIGN`: All the variables and temps used in the RHS of the assignment, and it includes global variables if the RHS is a `FUNC_CALL`
2. `FUNC_CALL`: All the variables and temps used in the arguments and conservatively the global variables (as we are implementing an intraprocedural analysis and the function can use the global variables)
3. `LABEL`, `GOTO`: Have empty `GEN` sets
4. `IF_GOTO`: The variables used in the condition
5. `IO`: Empty if it's a `read`, but the variable if it's a `write`
6. `RETURN`: The variables used in the expression returned

The `KILL` set is the variable written to in the `read` and `ASSIGN` statements.

We also added the global variables to the `OUT` of the last statement to let the global updates that move out of the function persistent.

All these assumptions hold true due to the absence of multi-threading and hence only one function can change a variable at a time and the global changes in the function can be changed if there is no visible side-effect.

We did not implement the removal of function calls if the function causes no side-effects.

Then we go through the statements and flag the statements whose `OUT` and `KILL` have zero intersection. Then go through the TAC code and remove the lines flagged.

We repeat this until any lines can't be removed.

## Use before Definition warning

Something to note about the usage before definition is that all such variables are defined before using exist in the `IN` of the first statement of the function. 

If the variable is used before defining, it is generated but not killed at that point, and hence it propagates till the top of the function to reach the `IN` of the first statement of the function.

This also applies to checking if there is a return in every path. If there is no return in atleast one path, there will be `stemp0` in the `IN` of the first line of the function.

