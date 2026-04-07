// Logical expression on RHS combining relational expressions

void main()
{   
    int age;
    int minor;
    int vote;
    int social;
    
    age = 10;
    minor = 18;
    vote = 21;
    social = 25;


    if((age > minor) && (age >= vote) && (minor == vote)) {
        print("drive but cant vote");
    }

    if((age >= vote) || (age > social)){
        print("vote or social");
    }
}
