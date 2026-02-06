package org.apache.commons.imaging.formats.tiff;

import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.common.RationalNumber;

public class TiffImageMetadata$GPSInfo {
    public final RationalNumber latitudeDegrees;
    public final RationalNumber latitudeMinutes;
    public final String latitudeRef;
    public final RationalNumber latitudeSeconds;
    public final RationalNumber longitudeDegrees;
    public final RationalNumber longitudeMinutes;
    public final String longitudeRef;
    public final RationalNumber longitudeSeconds;

    public TiffImageMetadata$GPSInfo(String str, String str2, RationalNumber rationalNumber, RationalNumber rationalNumber2, RationalNumber rationalNumber3, RationalNumber rationalNumber4, RationalNumber rationalNumber5, RationalNumber rationalNumber6) {
        this.latitudeRef = str;
        this.longitudeRef = str2;
        this.latitudeDegrees = rationalNumber;
        this.latitudeMinutes = rationalNumber2;
        this.latitudeSeconds = rationalNumber3;
        this.longitudeDegrees = rationalNumber4;
        this.longitudeMinutes = rationalNumber5;
        this.longitudeSeconds = rationalNumber6;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(88);
        sb.append("[GPS. Latitude: " + this.latitudeDegrees.toDisplayString() + " degrees, " + this.latitudeMinutes.toDisplayString() + " minutes, " + this.latitudeSeconds.toDisplayString() + " seconds " + this.latitudeRef);
        sb.append(", Longitude: " + this.longitudeDegrees.toDisplayString() + " degrees, " + this.longitudeMinutes.toDisplayString() + " minutes, " + this.longitudeSeconds.toDisplayString() + " seconds " + this.longitudeRef);
        sb.append(']');
        return sb.toString();
    }

    public double getLongitudeAsDegreesEast() throws ImageReadException {
        double dDoubleValue = this.longitudeDegrees.doubleValue() + (this.longitudeMinutes.doubleValue() / 60.0d) + (this.longitudeSeconds.doubleValue() / 3600.0d);
        if (this.longitudeRef.trim().equalsIgnoreCase("e")) {
            return dDoubleValue;
        }
        if (this.longitudeRef.trim().equalsIgnoreCase("w")) {
            return -dDoubleValue;
        }
        throw new ImageReadException("Unknown longitude ref: \"" + this.longitudeRef + "\"");
    }

    public double getLatitudeAsDegreesNorth() throws ImageReadException {
        double dDoubleValue = this.latitudeDegrees.doubleValue() + (this.latitudeMinutes.doubleValue() / 60.0d) + (this.latitudeSeconds.doubleValue() / 3600.0d);
        if (this.latitudeRef.trim().equalsIgnoreCase("n")) {
            return dDoubleValue;
        }
        if (this.latitudeRef.trim().equalsIgnoreCase("s")) {
            return -dDoubleValue;
        }
        throw new ImageReadException("Unknown latitude ref: \"" + this.latitudeRef + "\"");
    }
}
