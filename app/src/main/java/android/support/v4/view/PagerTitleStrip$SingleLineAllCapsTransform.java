package android.support.v4.view;

import android.content.Context;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import java.util.Locale;

class PagerTitleStrip$SingleLineAllCapsTransform extends SingleLineTransformationMethod {
    private Locale mLocale;

    PagerTitleStrip$SingleLineAllCapsTransform(Context context) {
        this.mLocale = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        CharSequence transformation = super.getTransformation(charSequence, view);
        if (transformation != null) {
            return transformation.toString().toUpperCase(this.mLocale);
        }
        return null;
    }
}
