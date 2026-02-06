package org.apache.commons.imaging;

public class ImageReadException extends ImagingException {
    private static final long serialVersionUID = -1;

    public ImageReadException(String str) {
        super(str);
    }

    public ImageReadException(String str, Throwable th) {
        super(str, th);
    }
}
