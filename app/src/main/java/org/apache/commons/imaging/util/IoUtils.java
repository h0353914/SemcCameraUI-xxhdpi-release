package org.apache.commons.imaging.util;

import java.io.Closeable;
import java.io.IOException;

public final class IoUtils {
    public static void closeQuietly(boolean z, Closeable... closeableArr) {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e) {
                    // Ignore
                }
            }
        }
    }

    private IoUtils() {
    }
}
