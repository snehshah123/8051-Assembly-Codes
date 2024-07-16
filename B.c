#include <reg51.h>

#define LED_PORT P2 // Assuming seven-segment display is connected to Port 1

sbit DIGIT1_PIN = P1^5; // Pin for controlling digit selection
sbit DIGIT2_PIN = P1^4;

void delay(unsigned int count) {
    unsigned int i;
    while (count) {
        i = 115; // This value can be adjusted based on clock frequency
        while (i > 0)
            i--;
        count--;
    }
}

void displayDigit(unsigned char digit) {
    switch(digit) {
        case 0: LED_PORT = 0x3F; break; // 0b00111111
        case 1: LED_PORT = 0x06; break; // 0b00000110
        case 2: LED_PORT = 0x5B; break; // 0b01011011
        case 3: LED_PORT = 0x4F; break; // 0b01001111
        case 4: LED_PORT = 0x66; break; // 0b01100110
        case 5: LED_PORT = 0x6D; break; // 0b01101101
        case 6: LED_PORT = 0x7D; break; // 0b01111101
        case 7: LED_PORT = 0x07; break; // 0b00000111
        case 8: LED_PORT = 0x7F; break; // 0b01111111
        case 9: LED_PORT = 0x6F; break; // 0b01101111
        default: LED_PORT = 0x00; break; // Turn off all segments for invalid digit
    }
}

void main() {
    unsigned int hour = 0;
    unsigned int minute = 0;
    unsigned int second = 0;
    bit digit_selector = 0; // Used to alternate between digits

    while(1) {
        // Display seconds
        DIGIT1_PIN = digit_selector; // Select first digit
        DIGIT2_PIN = !digit_selector; // Deselect second digit
        displayDigit(second / 10); // Display tens digit
        delay(5); // Adjust this delay based on desired refresh rate
        DIGIT1_PIN = !digit_selector; // Deselect first digit
        DIGIT2_PIN = digit_selector; // Select second digit
        displayDigit(second % 10); // Display ones digit
        delay(5);

        // Display minutes
        DIGIT1_PIN = digit_selector; // Select first digit
        DIGIT2_PIN = !digit_selector; // Deselect second digit
        displayDigit(minute / 10); // Display tens digit
        delay(5);
        DIGIT1_PIN = !digit_selector; // Deselect first digit
        DIGIT2_PIN = digit_selector; // Select second digit
        displayDigit(minute % 10); // Display ones digit
        delay(5);

        // Display hours
        DIGIT1_PIN = digit_selector; // Select first digit
        DIGIT2_PIN = !digit_selector; // Deselect second digit
        displayDigit(hour / 10); // Display tens digit
        delay(5);
        DIGIT1_PIN = !digit_selector; // Deselect first digit
        DIGIT2_PIN = digit_selector; // Select second digit
        displayDigit(hour % 10); // Display ones digit
        delay(5);

        // Toggle digit selector
        digit_selector = !digit_selector;

        // Increment time
        second++;
        if (second == 60) {
            minute++;
            second = 0;
            if (minute == 60) {
                hour++;
                minute = 0;
                if (hour == 24) {
                    hour = 0;
                }
            }
        }

        // Delay for one second
        delay(100); // Adjust this delay for one second
    }
}
