#include <reg51.h>

#define SEG_DELAY 5 // Delay for refreshing the display

// Seven-segment display patterns for digits 0 to 9
unsigned char seven_seg_patterns[] = {
    0xC0, // 0
    0xF9, // 1
    0xA4, // 2
    0xB0, // 3
    0x99, // 4
    0x92, // 5
    0x82, // 6
    0xF8, // 7
    0x80, // 8
    0x90  // 9
};

// Function to delay
void delay(unsigned int time) {
    unsigned int i, j;
    for (i = 0; i < time; i++)
        for (j = 0; j < 1275; j++);
}

// Function to display a digit on seven-segment display
void display_digit(unsigned char digit, unsigned char port) {
    P2 = seven_seg_patterns[digit]; // Display the digit
    P1 &= 0xCF; // Turn off both displays
    P1 |= port; // Turn on the selected display
    delay(SEG_DELAY); // Delay for persistence of vision
}

void main() {
    unsigned char tens, ones;
    unsigned int count;

    // Initialize
    P1 = 0xFF; // Make all P1 pins input initially
    P2 = 0x00; // Initialize P2 to 0
    tens = 0;
    ones = 0;

    while (1) {
        // Calculate tens and ones place digits
        tens = count / 10;
        ones = count % 10;

        // Display tens place digit
        display_digit(tens, 0x20); // Display on first seven-segment display

        // Delay to ensure proper display
        delay(SEG_DELAY);

        // Display ones place digit
        display_digit(ones, 0x10); // Display on second seven-segment display

        // Increment count and handle overflow
        count++;
        if (count == 60)
            count = 0;
    }
}
