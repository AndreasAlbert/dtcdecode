#############################################################
# Author: Alexander Ruede (CERN/KIT-IPE)
# Description: Encoding of a quarter core (2x8 pixel region)
#############################################################

# The binary tree encoding follows the procedure that is found in the RTL code of the RD53B development branch (in April 2019)
# The Enc2 and Enc8 dictionaries below are copies of the lookup tables in the Encoder.sv file of RD53B (might require special access rights):
# https://gitlab.cern.ch/rd53/RD53B/blob/devel/rtl/eoc/ccrc/Encoder.sv

# Remark: Data encoding and streams are built in - strings - of "1" and "0" to be able to emulate varying bit-length

Enc2 = {
    "00" : (0, "00"),
    "01" : (1, "00"),
    "10" : (2, "10"),
    "11" : (2, "11")
}

Enc8 = {
    # "00000000" : (  0, "00000000000000" ),
    "00000001" : (  3, "00000000000000" ),
    "00000010" : (  4, "00100000000000" ),
    "00000011" : (  4, "00110000000000" ),
    "00000100" : (  4, "01000000000000" ),
    "00000101" : (  5, "01100000000000" ),
    "00000110" : (  6, "01101000000000" ),
    "00000111" : (  6, "01101100000000" ),
    "00001000" : (  5, "01010000000000" ),
    "00001001" : (  6, "01110000000000" ),
    "00001010" : (  7, "01110100000000" ),
    "00001011" : (  7, "01110110000000" ),
    "00001100" : (  5, "01011000000000" ),
    "00001101" : (  6, "01111000000000" ),
    "00001110" : (  7, "01111100000000" ),
    "00001111" : (  7, "01111110000000" ),
    "00010000" : (  4, "10000000000000" ),
    "00010001" : (  6, "11000000000000" ),
    "00010010" : (  7, "11000100000000" ),
    "00010011" : (  7, "11000110000000" ),
    "00010100" : (  7, "11010000000000" ),
    "00010101" : (  8, "11011000000000" ),
    "00010110" : (  9, "11011001000000" ),
    "00010111" : (  9, "11011001100000" ),
    "00011000" : (  8, "11010010000000" ),
    "00011001" : (  9, "11011010000000" ),
    "00011010" : ( 10, "11011010100000" ),
    "00011011" : ( 10, "11011010110000" ),
    "00011100" : (  8, "11010011000000" ),
    "00011101" : (  9, "11011011000000" ),
    "00011110" : ( 10, "11011011100000" ),
    "00011111" : ( 10, "11011011110000" ),
    "00100000" : (  5, "10010000000000" ),
    "00100001" : (  7, "11001000000000" ),
    "00100010" : (  8, "11001010000000" ),
    "00100011" : (  8, "11001011000000" ),
    "00100100" : (  8, "11010100000000" ),
    "00100101" : (  9, "11011100000000" ),
    "00100110" : ( 10, "11011100100000" ),
    "00100111" : ( 10, "11011100110000" ),
    "00101000" : (  9, "11010101000000" ),
    "00101001" : ( 10, "11011101000000" ),
    "00101010" : ( 11, "11011101010000" ),
    "00101011" : ( 11, "11011101011000" ),
    "00101100" : (  9, "11010101100000" ),
    "00101101" : ( 10, "11011101100000" ),
    "00101110" : ( 11, "11011101110000" ),
    "00101111" : ( 11, "11011101111000" ),
    "00110000" : (  5, "10011000000000" ),
    "00110001" : (  7, "11001100000000" ),
    "00110010" : (  8, "11001110000000" ),
    "00110011" : (  8, "11001111000000" ),
    "00110100" : (  8, "11010110000000" ),
    "00110101" : (  9, "11011110000000" ),
    "00110110" : ( 10, "11011110100000" ),
    "00110111" : ( 10, "11011110110000" ),
    "00111000" : (  9, "11010111000000" ),
    "00111001" : ( 10, "11011111000000" ),
    "00111010" : ( 11, "11011111010000" ),
    "00111011" : ( 11, "11011111011000" ),
    "00111100" : (  9, "11010111100000" ),
    "00111101" : ( 10, "11011111100000" ),
    "00111110" : ( 11, "11011111110000" ),
    "00111111" : ( 11, "11011111111000" ),
    "01000000" : (  5, "10100000000000" ),
    "01000001" : (  7, "11100000000000" ),
    "01000010" : (  8, "11100010000000" ),
    "01000011" : (  8, "11100011000000" ),
    "01000100" : (  8, "11101000000000" ),
    "01000101" : (  9, "11101100000000" ),
    "01000110" : ( 10, "11101100100000" ),
    "01000111" : ( 10, "11101100110000" ),
    "01001000" : (  9, "11101001000000" ),
    "01001001" : ( 10, "11101101000000" ),
    "01001010" : ( 11, "11101101010000" ),
    "01001011" : ( 11, "11101101011000" ),
    "01001100" : (  9, "11101001100000" ),
    "01001101" : ( 10, "11101101100000" ),
    "01001110" : ( 11, "11101101110000" ),
    "01001111" : ( 11, "11101101111000" ),
    "01010000" : (  6, "10110000000000" ),
    "01010001" : (  8, "11110000000000" ),
    "01010010" : (  9, "11110001000000" ),
    "01010011" : (  9, "11110001100000" ),
    "01010100" : (  9, "11111000000000" ),
    "01010101" : ( 10, "11111100000000" ),
    "01010110" : ( 11, "11111100010000" ),
    "01010111" : ( 11, "11111100011000" ),
    "01011000" : ( 10, "11111000100000" ),
    "01011001" : ( 11, "11111100100000" ),
    "01011010" : ( 12, "11111100101000" ),
    "01011011" : ( 12, "11111100101100" ),
    "01011100" : ( 10, "11111000110000" ),
    "01011101" : ( 11, "11111100110000" ),
    "01011110" : ( 12, "11111100111000" ),
    "01011111" : ( 12, "11111100111100" ),
    "01100000" : (  7, "10110100000000" ),
    "01100001" : (  9, "11110010000000" ),
    "01100010" : ( 10, "11110010100000" ),
    "01100011" : ( 10, "11110010110000" ),
    "01100100" : ( 10, "11111001000000" ),
    "01100101" : ( 11, "11111101000000" ),
    "01100110" : ( 12, "11111101001000" ),
    "01100111" : ( 12, "11111101001100" ),
    "01101000" : ( 11, "11111001010000" ),
    "01101001" : ( 12, "11111101010000" ),
    "01101010" : ( 13, "11111101010100" ),
    "01101011" : ( 13, "11111101010110" ),
    "01101100" : ( 11, "11111001011000" ),
    "01101101" : ( 12, "11111101011000" ),
    "01101110" : ( 13, "11111101011100" ),
    "01101111" : ( 13, "11111101011110" ),
    "01110000" : (  7, "10110110000000" ),
    "01110001" : (  9, "11110011000000" ),
    "01110010" : ( 10, "11110011100000" ),
    "01110011" : ( 10, "11110011110000" ),
    "01110100" : ( 10, "11111001100000" ),
    "01110101" : ( 11, "11111101100000" ),
    "01110110" : ( 12, "11111101101000" ),
    "01110111" : ( 12, "11111101101100" ),
    "01111000" : ( 11, "11111001110000" ),
    "01111001" : ( 12, "11111101110000" ),
    "01111010" : ( 13, "11111101110100" ),
    "01111011" : ( 13, "11111101110110" ),
    "01111100" : ( 11, "11111001111000" ),
    "01111101" : ( 12, "11111101111000" ),
    "01111110" : ( 13, "11111101111100" ),
    "01111111" : ( 13, "11111101111110" ),
    "10000000" : (  6, "10101000000000" ),
    "10000001" : (  8, "11100100000000" ),
    "10000010" : (  9, "11100101000000" ),
    "10000011" : (  9, "11100101100000" ),
    "10000100" : (  9, "11101010000000" ),
    "10000101" : ( 10, "11101110000000" ),
    "10000110" : ( 11, "11101110010000" ),
    "10000111" : ( 11, "11101110011000" ),
    "10001000" : ( 10, "11101010100000" ),
    "10001001" : ( 11, "11101110100000" ),
    "10001010" : ( 12, "11101110101000" ),
    "10001011" : ( 12, "11101110101100" ),
    "10001100" : ( 10, "11101010110000" ),
    "10001101" : ( 11, "11101110110000" ),
    "10001110" : ( 12, "11101110111000" ),
    "10001111" : ( 12, "11101110111100" ),
    "10010000" : (  7, "10111000000000" ),
    "10010001" : (  9, "11110100000000" ),
    "10010010" : ( 10, "11110100100000" ),
    "10010011" : ( 10, "11110100110000" ),
    "10010100" : ( 10, "11111010000000" ),
    "10010101" : ( 11, "11111110000000" ),
    "10010110" : ( 12, "11111110001000" ),
    "10010111" : ( 12, "11111110001100" ),
    "10011000" : ( 11, "11111010010000" ),
    "10011001" : ( 12, "11111110010000" ),
    "10011010" : ( 13, "11111110010100" ),
    "10011011" : ( 13, "11111110010110" ),
    "10011100" : ( 11, "11111010011000" ),
    "10011101" : ( 12, "11111110011000" ),
    "10011110" : ( 13, "11111110011100" ),
    "10011111" : ( 13, "11111110011110" ),
    "10100000" : (  8, "10111010000000" ),
    "10100001" : ( 10, "11110101000000" ),
    "10100010" : ( 11, "11110101010000" ),
    "10100011" : ( 11, "11110101011000" ),
    "10100100" : ( 11, "11111010100000" ),
    "10100101" : ( 12, "11111110100000" ),
    "10100110" : ( 13, "11111110100100" ),
    "10100111" : ( 13, "11111110100110" ),
    "10101000" : ( 12, "11111010101000" ),
    "10101001" : ( 13, "11111110101000" ),
    "10101010" : ( 14, "11111110101010" ),
    "10101011" : ( 14, "11111110101011" ),
    "10101100" : ( 12, "11111010101100" ),
    "10101101" : ( 13, "11111110101100" ),
    "10101110" : ( 14, "11111110101110" ),
    "10101111" : ( 14, "11111110101111" ),
    "10110000" : (  8, "10111011000000" ),
    "10110001" : ( 10, "11110101100000" ),
    "10110010" : ( 11, "11110101110000" ),
    "10110011" : ( 11, "11110101111000" ),
    "10110100" : ( 11, "11111010110000" ),
    "10110101" : ( 12, "11111110110000" ),
    "10110110" : ( 13, "11111110110100" ),
    "10110111" : ( 13, "11111110110110" ),
    "10111000" : ( 12, "11111010111000" ),
    "10111001" : ( 13, "11111110111000" ),
    "10111010" : ( 14, "11111110111010" ),
    "10111011" : ( 14, "11111110111011" ),
    "10111100" : ( 12, "11111010111100" ),
    "10111101" : ( 13, "11111110111100" ),
    "10111110" : ( 14, "11111110111110" ),
    "10111111" : ( 14, "11111110111111" ),
    "11000000" : (  6, "10101100000000" ),
    "11000001" : (  8, "11100110000000" ),
    "11000010" : (  9, "11100111000000" ),
    "11000011" : (  9, "11100111100000" ),
    "11000100" : (  9, "11101011000000" ),
    "11000101" : ( 10, "11101111000000" ),
    "11000110" : ( 11, "11101111010000" ),
    "11000111" : ( 11, "11101111011000" ),
    "11001000" : ( 10, "11101011100000" ),
    "11001001" : ( 11, "11101111100000" ),
    "11001010" : ( 12, "11101111101000" ),
    "11001011" : ( 12, "11101111101100" ),
    "11001100" : ( 10, "11101011110000" ),
    "11001101" : ( 11, "11101111110000" ),
    "11001110" : ( 12, "11101111111000" ),
    "11001111" : ( 12, "11101111111100" ),
    "11010000" : (  7, "10111100000000" ),
    "11010001" : (  9, "11110110000000" ),
    "11010010" : ( 10, "11110110100000" ),
    "11010011" : ( 10, "11110110110000" ),
    "11010100" : ( 10, "11111011000000" ),
    "11010101" : ( 11, "11111111000000" ),
    "11010110" : ( 12, "11111111001000" ),
    "11010111" : ( 12, "11111111001100" ),
    "11011000" : ( 11, "11111011010000" ),
    "11011001" : ( 12, "11111111010000" ),
    "11011010" : ( 13, "11111111010100" ),
    "11011011" : ( 13, "11111111010110" ),
    "11011100" : ( 11, "11111011011000" ),
    "11011101" : ( 12, "11111111011000" ),
    "11011110" : ( 13, "11111111011100" ),
    "11011111" : ( 13, "11111111011110" ),
    "11100000" : (  8, "10111110000000" ),
    "11100001" : ( 10, "11110111000000" ),
    "11100010" : ( 11, "11110111010000" ),
    "11100011" : ( 11, "11110111011000" ),
    "11100100" : ( 11, "11111011100000" ),
    "11100101" : ( 12, "11111111100000" ),
    "11100110" : ( 13, "11111111100100" ),
    "11100111" : ( 13, "11111111100110" ),
    "11101000" : ( 12, "11111011101000" ),
    "11101001" : ( 13, "11111111101000" ),
    "11101010" : ( 14, "11111111101010" ),
    "11101011" : ( 14, "11111111101011" ),
    "11101100" : ( 12, "11111011101100" ),
    "11101101" : ( 13, "11111111101100" ),
    "11101110" : ( 14, "11111111101110" ),
    "11101111" : ( 14, "11111111101111" ),
    "11110000" : (  8, "10111111000000" ),
    "11110001" : ( 10, "11110111100000" ),
    "11110010" : ( 11, "11110111110000" ),
    "11110011" : ( 11, "11110111111000" ),
    "11110100" : ( 11, "11111011110000" ),
    "11110101" : ( 12, "11111111110000" ),
    "11110110" : ( 13, "11111111110100" ),
    "11110111" : ( 13, "11111111110110" ),
    "11111000" : ( 12, "11111011111000" ),
    "11111001" : ( 13, "11111111111000" ),
    "11111010" : ( 14, "11111111111010" ),
    "11111011" : ( 14, "11111111111011" ),
    "11111100" : ( 12, "11111011111100" ),
    "11111101" : ( 13, "11111111111100" ),
    "11111110" : ( 14, "11111111111110" ),
    "11111111" : ( 14, "11111111111111" )
}