package org.apache.commons.imaging.common;

import java.text.NumberFormat;

public class RationalNumber extends Number {
    private static final double TOLERANCE = 1.0E-8d;
    private static final long serialVersionUID = -8412262656468158691L;
    public final int divisor;
    public final int numerator;

    public RationalNumber(int i, int i2) {
        this.numerator = i;
        this.divisor = i2;
    }

    static RationalNumber factoryMethod(long j, long j2) {
        if (j > 2147483647L || j < -2147483648L || j2 > 2147483647L || j2 < -2147483648L) {
            while (true) {
                if ((j <= 2147483647L && j >= -2147483648L && j2 <= 2147483647L && j2 >= -2147483648L) || Math.abs(j) <= 1 || Math.abs(j2) <= 1) {
                    break;
                }
                j >>= 1;
                j2 >>= 1;
            }
            if (j2 == 0) {
                throw new NumberFormatException("Invalid value, numerator: " + j + ", divisor: " + j2);
            }
        }
        long jGcd = gcd(j, j2);
        return new RationalNumber((int) (j / jGcd), (int) (j2 / jGcd));
    }

    private static long gcd(long j, long j2) {
        return j2 == 0 ? j : gcd(j2, j % j2);
    }

    public RationalNumber negate() {
        return new RationalNumber(-this.numerator, this.divisor);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return ((double) this.numerator) / ((double) this.divisor);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.numerator / this.divisor;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.numerator / this.divisor;
    }

    @Override // java.lang.Number
    public long longValue() {
        return ((long) this.numerator) / ((long) this.divisor);
    }

    public String toString() {
        if (this.divisor == 0) {
            return "Invalid rational (" + this.numerator + "/" + this.divisor + ")";
        }
        NumberFormat numberFormat = NumberFormat.getInstance();
        if (this.numerator % this.divisor == 0) {
            return numberFormat.format(this.numerator / this.divisor);
        }
        return this.numerator + "/" + this.divisor + " (" + numberFormat.format(((double) this.numerator) / ((double) this.divisor)) + ")";
    }

    public String toDisplayString() {
        if (this.numerator % this.divisor == 0) {
            return Integer.toString(this.numerator / this.divisor);
        }
        NumberFormat numberFormat = NumberFormat.getInstance();
        numberFormat.setMaximumFractionDigits(3);
        return numberFormat.format(((double) this.numerator) / ((double) this.divisor));
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ea A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static RationalNumber valueOf(double d) {
        boolean z;
        RationalNumber rationalNumber;
        RationalNumber rationalNumber2;
        RationalNumber rationalNumber3;
        if (d >= 2.147483647E9d) {
            return new RationalNumber(Integer.MAX_VALUE, 1);
        }
        if (d <= -2.147483647E9d) {
            return new RationalNumber(-2147483647, 1);
        }
        if (d < 0.0d) {
            d = Math.abs(d);
            z = true;
        } else {
            z = false;
        }
        if (d == 0.0d) {
            return new RationalNumber(0, 1);
        }
        if (d >= 1.0d) {
            int i = (int) d;
            if (i < d) {
                rationalNumber = new RationalNumber(i, 1);
                rationalNumber3 = new RationalNumber(i + 1, 1);
            } else {
                rationalNumber = new RationalNumber(i - 1, 1);
                rationalNumber3 = new RationalNumber(i, 1);
            }
            rationalNumber2 = rationalNumber3;
        } else {
            int i2 = (int) (1.0d / d);
            if (1.0d / ((double) i2) < d) {
                rationalNumber = new RationalNumber(1, i2);
                rationalNumber2 = new RationalNumber(1, i2 - 1);
            } else {
                rationalNumber = new RationalNumber(1, i2 + 1);
                rationalNumber2 = new RationalNumber(1, i2);
            }
        }
        RationalNumber$Option rationalNumber$OptionFactory = RationalNumber$Option.factory(rationalNumber, d);
        RationalNumber$Option rationalNumber$OptionFactory2 = RationalNumber$Option.factory(rationalNumber2, d);
        RationalNumber$Option rationalNumber$Option = rationalNumber$OptionFactory.error < rationalNumber$OptionFactory2.error ? rationalNumber$OptionFactory : rationalNumber$OptionFactory2;
        for (int i3 = 0; rationalNumber$Option.error > 1.0E-8d && i3 < 100; i3++) {
            RationalNumber rationalNumberFactoryMethod = factoryMethod(((long) rationalNumber$OptionFactory.rationalNumber.numerator) + ((long) rationalNumber$OptionFactory2.rationalNumber.numerator), ((long) rationalNumber$OptionFactory.rationalNumber.divisor) + ((long) rationalNumber$OptionFactory2.rationalNumber.divisor));
            RationalNumber$Option rationalNumber$OptionFactory3 = RationalNumber$Option.factory(rationalNumberFactoryMethod, d);
            if (d < rationalNumberFactoryMethod.doubleValue()) {
                if (rationalNumber$OptionFactory2.error <= rationalNumber$OptionFactory3.error) {
                    break;
                }
                rationalNumber$OptionFactory2 = rationalNumber$OptionFactory3;
                if (rationalNumber$OptionFactory3.error >= rationalNumber$Option.error) {
                    rationalNumber$Option = rationalNumber$OptionFactory3;
                }
            } else {
                if (rationalNumber$OptionFactory.error <= rationalNumber$OptionFactory3.error) {
                    break;
                }
                rationalNumber$OptionFactory = rationalNumber$OptionFactory3;
                if (rationalNumber$OptionFactory3.error >= rationalNumber$Option.error) {
                }
            }
        }
        return z ? rationalNumber$Option.rationalNumber.negate() : rationalNumber$Option.rationalNumber;
    }
}
