package org.apache.commons.imaging.common;

import com.sonyericsson.android.camera.util.capability.SharedPrefsTranslator;
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
                if ((j <= 2147483647L && j >= -2147483648L && j2 <= 2147483647L && j2 >= -2147483648L)
                        || Math.abs(j) <= 1 || Math.abs(j2) <= 1) {
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
        return (double) this.numerator / (double) this.divisor;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) this.numerator / (float) this.divisor;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.numerator / this.divisor;
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) this.numerator / (long) this.divisor;
    }

    public String toString() {
        if (this.divisor == 0) {
            return "Invalid rational (" + this.numerator + SharedPrefsTranslator.CONNECTOR_SLASH + this.divisor + ")";
        }
        NumberFormat numberFormat = NumberFormat.getInstance();
        if (this.numerator % this.divisor == 0) {
            return numberFormat.format(this.numerator / this.divisor);
        }
        return this.numerator + SharedPrefsTranslator.CONNECTOR_SLASH + this.divisor + " ("
                + numberFormat.format((double) this.numerator / (double) this.divisor) + ")";
    }

    public String toDisplayString() {
        if (this.numerator % this.divisor == 0) {
            return Integer.toString(this.numerator / this.divisor);
        }
        NumberFormat numberFormat = NumberFormat.getInstance();
        numberFormat.setMaximumFractionDigits(3);
        return numberFormat.format((double) this.numerator / (double) this.divisor);
    }

    private static class Option {
        public final double error;
        public final RationalNumber rationalNumber;

        private Option(RationalNumber rationalNumber, double d) {
            this.rationalNumber = rationalNumber;
            this.error = d;
        }

        public static Option factory(RationalNumber rationalNumber, double d) {
            return new Option(rationalNumber, Math.abs(rationalNumber.doubleValue() - d));
        }

        public String toString() {
            return this.rationalNumber.toString();
        }
    }

    public static RationalNumber valueOf(double d) {
        if (d >= 2.147483647E9d) {
            return new RationalNumber(Integer.MAX_VALUE, 1);
        }
        if (d <= -2.147483647E9d) {
            return new RationalNumber(-2147483647, 1);
        }
        boolean negative = false;
        if (d < 0.0d) {
            negative = true;
            d = Math.abs(d);
        }
        if (d == 0.0d) {
            return new RationalNumber(0, 1);
        }
        RationalNumber low;
        RationalNumber high;
        if (d >= 1.0d) {
            int i = (int) d;
            if (i < d) {
                low = new RationalNumber(i, 1);
                high = new RationalNumber(i + 1, 1);
            } else {
                low = new RationalNumber(i - 1, 1);
                high = new RationalNumber(i, 1);
            }
        } else {
            int i2 = (int) (1.0d / d);
            if (1.0d / i2 < d) {
                low = new RationalNumber(1, i2);
                high = new RationalNumber(1, i2 - 1);
            } else {
                low = new RationalNumber(1, i2 + 1);
                high = new RationalNumber(1, i2);
            }
        }

        Option lowOption = Option.factory(low, d);
        Option highOption = Option.factory(high, d);
        Option bestOption = lowOption.error < highOption.error ? lowOption : highOption;

        for (int i = 0; bestOption.error > TOLERANCE && i < 100; i++) {
            RationalNumber mid = factoryMethod(
                    (long) lowOption.rationalNumber.numerator + (long) highOption.rationalNumber.numerator,
                    (long) lowOption.rationalNumber.divisor + (long) highOption.rationalNumber.divisor);
            Option midOption = Option.factory(mid, d);

            if (d < mid.doubleValue()) {
                if (highOption.error <= midOption.error) {
                    break;
                }
                highOption = midOption;
            } else {
                if (lowOption.error <= midOption.error) {
                    break;
                }
                lowOption = midOption;
            }

            if (midOption.error < bestOption.error) {
                bestOption = midOption;
            }
        }

        return negative ? bestOption.rationalNumber.negate() : bestOption.rationalNumber;
    }
}
