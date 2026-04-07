// Logical expression on RHS using variables

void main()
{   
    int age;
    int minor;
    int vote;
    int social;
    bool isMinor;
    bool canDrive;
    bool canVote;
    bool canSocial;
    bool check;
    bool drive_but_cant_vote;
    bool vote_or_social;

    age = 10;
    minor = 18;
    vote = 21;
    social = 25;

    isMinor = age < minor;
    canDrive = age > minor;
    canVote = age >= vote;
    canSocial = age > social;
    check = minor == vote;

    drive_but_cant_vote = canDrive && canVote && check;
    vote_or_social = canVote || canSocial;
}
