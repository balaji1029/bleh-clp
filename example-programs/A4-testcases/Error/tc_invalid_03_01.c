// invalid condition, assignment stmt in while condition

void main(){
    int incorrect;

    while(incorrect = 96){
        incorrect = incorrect + 2;
    }
}