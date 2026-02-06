package android.support.v4.text;

class BidiFormatter$DirectionalityEstimator {
    private static final byte[] DIR_TYPE_CACHE = new byte[1792];
    private static final int DIR_TYPE_CACHE_SIZE = 1792;
    private int charIndex;
    private final boolean isHtml;
    private char lastChar;
    private final int length;
    private final CharSequence text;

    static {
        for (int i = 0; i < 1792; i++) {
            DIR_TYPE_CACHE[i] = Character.getDirectionality(i);
        }
    }

    BidiFormatter$DirectionalityEstimator(CharSequence charSequence, boolean z) {
        this.text = charSequence;
        this.isHtml = z;
        this.length = charSequence.length();
    }

    int getEntryDir() {
        this.charIndex = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (this.charIndex < this.length && i == 0) {
            byte bDirTypeForward = dirTypeForward();
            if (bDirTypeForward != 9) {
                switch (bDirTypeForward) {
                    case 0:
                        if (i3 == 0) {
                            return -1;
                        }
                        i = i3;
                        break;
                    case 1:
                    case 2:
                        if (i3 == 0) {
                            return 1;
                        }
                        i = i3;
                        break;
                    default:
                        switch (bDirTypeForward) {
                            case 14:
                            case 15:
                                i3++;
                                i2 = -1;
                                continue;
                            case 16:
                            case 17:
                                i3++;
                                i2 = 1;
                                continue;
                            case 18:
                                i3--;
                                i2 = 0;
                                continue;
                        }
                        i = i3;
                        break;
                }
            }
        }
        if (i == 0) {
            return 0;
        }
        if (i2 != 0) {
            return i2;
        }
        while (this.charIndex > 0) {
            switch (dirTypeBackward()) {
                case 14:
                case 15:
                    if (i == i3) {
                        return -1;
                    }
                    i3--;
                    break;
                case 16:
                case 17:
                    if (i == i3) {
                        return 1;
                    }
                    i3--;
                    break;
                case 18:
                    i3++;
                    break;
            }
        }
        return 0;
    }

    int getExitDir() {
        this.charIndex = this.length;
        int i = 0;
        int i2 = 0;
        while (this.charIndex > 0) {
            byte bDirTypeBackward = dirTypeBackward();
            if (bDirTypeBackward != 9) {
                switch (bDirTypeBackward) {
                    case 0:
                        if (i2 == 0) {
                            return -1;
                        }
                        if (i == 0) {
                            i = i2;
                        }
                        break;
                    case 1:
                    case 2:
                        if (i2 == 0) {
                            return 1;
                        }
                        if (i == 0) {
                            i = i2;
                        }
                        break;
                    default:
                        switch (bDirTypeBackward) {
                            case 14:
                            case 15:
                                if (i == i2) {
                                    return -1;
                                }
                                i2--;
                                continue;
                                break;
                            case 16:
                            case 17:
                                if (i == i2) {
                                    return 1;
                                }
                                i2--;
                                continue;
                                break;
                            case 18:
                                i2++;
                                continue;
                            default:
                                if (i != 0) {
                                }
                                break;
                        }
                        i = i2;
                        break;
                }
            }
        }
        return 0;
    }

    private static byte getCachedDirectionality(char c) {
        return c < 1792 ? DIR_TYPE_CACHE[c] : Character.getDirectionality(c);
    }

    byte dirTypeForward() {
        this.lastChar = this.text.charAt(this.charIndex);
        if (Character.isHighSurrogate(this.lastChar)) {
            int iCodePointAt = Character.codePointAt(this.text, this.charIndex);
            this.charIndex += Character.charCount(iCodePointAt);
            return Character.getDirectionality(iCodePointAt);
        }
        this.charIndex++;
        byte cachedDirectionality = getCachedDirectionality(this.lastChar);
        if (!this.isHtml) {
            return cachedDirectionality;
        }
        if (this.lastChar == '<') {
            return skipTagForward();
        }
        return this.lastChar == '&' ? skipEntityForward() : cachedDirectionality;
    }

    byte dirTypeBackward() {
        this.lastChar = this.text.charAt(this.charIndex - 1);
        if (Character.isLowSurrogate(this.lastChar)) {
            int iCodePointBefore = Character.codePointBefore(this.text, this.charIndex);
            this.charIndex -= Character.charCount(iCodePointBefore);
            return Character.getDirectionality(iCodePointBefore);
        }
        this.charIndex--;
        byte cachedDirectionality = getCachedDirectionality(this.lastChar);
        if (!this.isHtml) {
            return cachedDirectionality;
        }
        if (this.lastChar == '>') {
            return skipTagBackward();
        }
        return this.lastChar == ';' ? skipEntityBackward() : cachedDirectionality;
    }

    private byte skipTagForward() {
        int i = this.charIndex;
        while (this.charIndex < this.length) {
            CharSequence charSequence = this.text;
            int i2 = this.charIndex;
            this.charIndex = i2 + 1;
            this.lastChar = charSequence.charAt(i2);
            if (this.lastChar == '>') {
                return (byte) 12;
            }
            if (this.lastChar == '\"' || this.lastChar == '\'') {
                char c = this.lastChar;
                while (this.charIndex < this.length) {
                    CharSequence charSequence2 = this.text;
                    int i3 = this.charIndex;
                    this.charIndex = i3 + 1;
                    char cCharAt = charSequence2.charAt(i3);
                    this.lastChar = cCharAt;
                    if (cCharAt != c) {
                    }
                }
            }
        }
        this.charIndex = i;
        this.lastChar = '<';
        return (byte) 13;
    }

    private byte skipTagBackward() {
        int i = this.charIndex;
        while (this.charIndex > 0) {
            CharSequence charSequence = this.text;
            int i2 = this.charIndex - 1;
            this.charIndex = i2;
            this.lastChar = charSequence.charAt(i2);
            if (this.lastChar == '<') {
                return (byte) 12;
            }
            if (this.lastChar == '>') {
                break;
            }
            if (this.lastChar == '\"' || this.lastChar == '\'') {
                char c = this.lastChar;
                while (this.charIndex > 0) {
                    CharSequence charSequence2 = this.text;
                    int i3 = this.charIndex - 1;
                    this.charIndex = i3;
                    char cCharAt = charSequence2.charAt(i3);
                    this.lastChar = cCharAt;
                    if (cCharAt != c) {
                    }
                }
            }
        }
        this.charIndex = i;
        this.lastChar = '>';
        return (byte) 13;
    }

    private byte skipEntityForward() {
        while (this.charIndex < this.length) {
            CharSequence charSequence = this.text;
            int i = this.charIndex;
            this.charIndex = i + 1;
            char cCharAt = charSequence.charAt(i);
            this.lastChar = cCharAt;
            if (cCharAt == ';') {
                return (byte) 12;
            }
        }
        return (byte) 12;
    }

    private byte skipEntityBackward() {
        int i = this.charIndex;
        while (this.charIndex > 0) {
            CharSequence charSequence = this.text;
            int i2 = this.charIndex - 1;
            this.charIndex = i2;
            this.lastChar = charSequence.charAt(i2);
            if (this.lastChar == '&') {
                return (byte) 12;
            }
            if (this.lastChar == ';') {
                break;
            }
        }
        this.charIndex = i;
        this.lastChar = ';';
        return (byte) 13;
    }
}
