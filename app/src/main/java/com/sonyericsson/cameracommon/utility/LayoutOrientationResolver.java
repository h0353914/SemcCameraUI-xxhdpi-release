package com.sonyericsson.cameracommon.utility;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;

public class LayoutOrientationResolver {
    public static final String TAG = "LayoutOrientationResolver";
    private static final LayoutOrientationResolver sInstance = new LayoutOrientationResolver();
    private LayoutOrientationResolver$LayoutOrientationType mLayoutOrientation = LayoutOrientationResolver$LayoutOrientationType.PORTRAIT;

    public int getConfigurationOrientation() {
        return 1;
    }

    private LayoutOrientationResolver() {
    }

    public static LayoutOrientationResolver getInstance() {
        return sInstance;
    }

    public LayoutOrientationResolver$LayoutOrientationType getOrientation() {
        return this.mLayoutOrientation;
    }

    public Rect getRectAccordingToLayoutOrientation(Rect rect) {
        if (rect == null) {
            return null;
        }
        if (this.mLayoutOrientation == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            return new Rect(0, 0, rect.height(), rect.width());
        }
        return new Rect(rect);
    }

    public Size getSizeAccordingToLayoutOrientation(Size size) {
        int width;
        int height;
        if (this.mLayoutOrientation == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            width = size.getHeight();
            height = size.getWidth();
        } else {
            width = size.getWidth();
            height = size.getHeight();
        }
        return new Size(width, height);
    }

    public Point getPointAccordingToLayoutOrientation(Point point) {
        if (point == null) {
            return point;
        }
        if (this.mLayoutOrientation == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            return new Point(point.y, point.x);
        }
        return new Point(point);
    }
}
