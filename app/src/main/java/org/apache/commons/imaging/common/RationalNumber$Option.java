package org.apache.commons.imaging.common;

/* JADX INFO: loaded from: classes.dex */
class RationalNumber$Option {
    public final double error;
    public final RationalNumber rationalNumber;

    private RationalNumber$Option(RationalNumber rationalNumber, double d) {
        this.rationalNumber = rationalNumber;
        this.error = d;
    }

    public static RationalNumber$Option factory(RationalNumber rationalNumber, double d) {
        return new RationalNumber$Option(rationalNumber, Math.abs(rationalNumber.doubleValue() - d));
    }

    public String toString() {
        return this.rationalNumber.toString();
    }
}
