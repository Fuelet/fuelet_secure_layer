String addHexPrefix(String hexNum) =>
    hexNum.startsWith('0x') ? hexNum : '0x$hexNum';
