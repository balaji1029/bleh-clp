// Relational expression with variables

void main()
{   
    int age;
    int minor;
    int vote;
    
    age = 10;
    minor = 18;
    vote = 21;

    if(age < minor){
        print("Minor");
    }
    
    if(age > minor){
        print("Drive");
    }

    if(age >= vote){
        print("Vote");
    }

    if(minor == vote){
        print("Check");
    }
}
