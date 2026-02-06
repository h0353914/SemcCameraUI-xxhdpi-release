package android.support.v4.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v4.graphics.drawable.IconCompat;
import android.text.TextUtils;

public class ShortcutInfoCompat$Builder {
    private final ShortcutInfoCompat mInfo = new ShortcutInfoCompat();

    public ShortcutInfoCompat$Builder(@NonNull Context context, @NonNull String str) {
        this.mInfo.mContext = context;
        this.mInfo.mId = str;
    }

    @NonNull
    public ShortcutInfoCompat$Builder setShortLabel(@NonNull CharSequence charSequence) {
        this.mInfo.mLabel = charSequence;
        return this;
    }

    @NonNull
    public ShortcutInfoCompat$Builder setLongLabel(@NonNull CharSequence charSequence) {
        this.mInfo.mLongLabel = charSequence;
        return this;
    }

    @NonNull
    public ShortcutInfoCompat$Builder setDisabledMessage(@NonNull CharSequence charSequence) {
        this.mInfo.mDisabledMessage = charSequence;
        return this;
    }

    @NonNull
    public ShortcutInfoCompat$Builder setIntent(@NonNull Intent intent) {
        return setIntents(new Intent[]{intent});
    }

    @NonNull
    public ShortcutInfoCompat$Builder setIntents(@NonNull Intent[] intentArr) {
        this.mInfo.mIntents = intentArr;
        return this;
    }

    @NonNull
    public ShortcutInfoCompat$Builder setIcon(IconCompat iconCompat) {
        this.mInfo.mIcon = iconCompat;
        return this;
    }

    @NonNull
    public ShortcutInfoCompat$Builder setActivity(@NonNull ComponentName componentName) {
        this.mInfo.mActivity = componentName;
        return this;
    }

    public ShortcutInfoCompat$Builder setAlwaysBadged() {
        this.mInfo.mIsAlwaysBadged = true;
        return this;
    }

    @NonNull
    public ShortcutInfoCompat build() {
        if (TextUtils.isEmpty(this.mInfo.mLabel)) {
            throw new IllegalArgumentException("Shortcut must have a non-empty label");
        }
        if (this.mInfo.mIntents == null || this.mInfo.mIntents.length == 0) {
            throw new IllegalArgumentException("Shortcut must have an intent");
        }
        return this.mInfo;
    }
}
