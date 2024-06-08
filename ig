#include <stdio.h>

void displayIntro() {
    printf("Welcome to the Personality Prediction Quiz!\n");
    printf("Answer the following questions to find out your personality type.\n\n");
}

int askQuestion(const char* question) {
    int answer;
    printf("%s (1-Agree, 2-Neutral, 3-Disagree): ", question);
    scanf("%d", &answer);
    return answer;
}

char* determinePersonality(int score) {
    if (score <= 6) {
        return "Extrovert";
    } else if (score <= 12) {
        return "Ambivert";
    } else {
        return "Introvert";
    }
}

int main() {
    displayIntro();

    int score = 0;

    score += askQuestion("I enjoy social gatherings and parties.");
    score += askQuestion("I find it easy to start conversations with strangers.");
    score += askQuestion("I prefer to stay home rather than go out.");
    score += askQuestion("I feel drained after social interactions.");
    score += askQuestion("I am energized by being around other people.");
    score += askQuestion("I enjoy being the center of attention.");

    char* personality = determinePersonality(score);

    printf("\nYour predicted personality type is: %s\n", personality);

    return 0;
}
