package com.sonymobile.cameracommon.font;

import android.graphics.Typeface;
import android.widget.Button;
import android.widget.TextView;
import java.io.File;

public class FontUtil {
    public static final String TAG = "FontUtil";

    public static Typeface createTypeface(FontUtil$RobotoFontType fontUtil$RobotoFontType) {
        if (fontUtil$RobotoFontType == null || !new File(FontUtil$RobotoFontType.access$000(fontUtil$RobotoFontType)).exists()) {
            return null;
        }
        return Typeface.createFromFile(FontUtil$RobotoFontType.access$000(fontUtil$RobotoFontType));
    }

    public static boolean setRobotoFont(TextView textView, FontUtil$RobotoFontType fontUtil$RobotoFontType) {
        Typeface typefaceCreateTypeface;
        if (textView == null || fontUtil$RobotoFontType == null || (typefaceCreateTypeface = createTypeface(fontUtil$RobotoFontType)) == null) {
            return false;
        }
        textView.setTypeface(typefaceCreateTypeface);
        return true;
    }

    public static boolean setRobotoFont(Button button, FontUtil$RobotoFontType fontUtil$RobotoFontType) {
        Typeface typefaceCreateTypeface;
        if (button == null || fontUtil$RobotoFontType == null || (typefaceCreateTypeface = createTypeface(fontUtil$RobotoFontType)) == null) {
            return false;
        }
        button.setTypeface(typefaceCreateTypeface);
        return true;
    }

    public static boolean setBold(TextView textView) {
        if (textView == null) {
            return false;
        }
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        return true;
    }

    public static boolean setBold(Button button) {
        if (button == null) {
            return false;
        }
        button.setTypeface(Typeface.DEFAULT_BOLD);
        return true;
    }

    public static boolean setDefault(TextView textView) {
        if (textView == null) {
            return false;
        }
        textView.setTypeface(Typeface.DEFAULT);
        return true;
    }

    public static boolean setDefault(Button button) {
        if (button == null) {
            return false;
        }
        button.setTypeface(Typeface.DEFAULT);
        return true;
    }
}
