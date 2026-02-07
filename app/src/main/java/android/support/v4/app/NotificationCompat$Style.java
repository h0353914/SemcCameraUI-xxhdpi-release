package android.support.v4.app;

import android.app.Notification;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.compat.R$dimen;
import android.support.compat.R$drawable;
import android.support.compat.R$id;
import android.support.compat.R$integer;
import android.support.compat.R$string;
import android.widget.RemoteViews;
import java.text.NumberFormat;

/* JADX INFO: loaded from: classes.dex */
public abstract class NotificationCompat$Style {
    CharSequence mBigContentTitle;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    protected NotificationCompat$Builder mBuilder;
    CharSequence mSummaryText;
    boolean mSummaryTextSet = false;

    private static float constrain(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void addCompatExtras(Bundle bundle) {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    protected void restoreFromCompatExtras(Bundle bundle) {
    }

    public void setBuilder(NotificationCompat$Builder notificationCompat$Builder) {
        if (this.mBuilder != notificationCompat$Builder) {
            this.mBuilder = notificationCompat$Builder;
            if (this.mBuilder != null) {
                this.mBuilder.setStyle(this);
            }
        }
    }

    public Notification build() {
        if (this.mBuilder != null) {
            return this.mBuilder.build();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0232  */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RemoteViews applyStandardTemplate(boolean z, int i, boolean z2) {
        boolean z3;
        boolean z4;
        Resources resources = this.mBuilder.mContext.getResources();
        RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), i);
        boolean z5 = this.mBuilder.getPriority() < -1;
        if (Build$VERSION.SDK_INT >= 16 && Build$VERSION.SDK_INT < 21) {
            if (z5) {
                remoteViews.setInt(R$id.notification_background, "setBackgroundResource", R$drawable.notification_bg_low);
                remoteViews.setInt(R$id.icon, "setBackgroundResource", R$drawable.notification_template_icon_low_bg);
            } else {
                remoteViews.setInt(R$id.notification_background, "setBackgroundResource", R$drawable.notification_bg);
                remoteViews.setInt(R$id.icon, "setBackgroundResource", R$drawable.notification_template_icon_bg);
            }
        }
        if (this.mBuilder.mLargeIcon != null) {
            if (Build$VERSION.SDK_INT >= 16) {
                remoteViews.setViewVisibility(R$id.icon, 0);
                remoteViews.setImageViewBitmap(R$id.icon, this.mBuilder.mLargeIcon);
            } else {
                remoteViews.setViewVisibility(R$id.icon, 8);
            }
            if (z && this.mBuilder.mNotification.icon != 0) {
                int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.notification_right_icon_size);
                int dimensionPixelSize2 = dimensionPixelSize - (resources.getDimensionPixelSize(R$dimen.notification_small_icon_background_padding) * 2);
                if (Build$VERSION.SDK_INT >= 21) {
                    remoteViews.setImageViewBitmap(R$id.right_icon, createIconWithBackground(this.mBuilder.mNotification.icon, dimensionPixelSize, dimensionPixelSize2, this.mBuilder.getColor()));
                } else {
                    remoteViews.setImageViewBitmap(R$id.right_icon, createColoredBitmap(this.mBuilder.mNotification.icon, -1));
                }
                remoteViews.setViewVisibility(R$id.right_icon, 0);
            }
        } else if (z && this.mBuilder.mNotification.icon != 0) {
            remoteViews.setViewVisibility(R$id.icon, 0);
            if (Build$VERSION.SDK_INT >= 21) {
                remoteViews.setImageViewBitmap(R$id.icon, createIconWithBackground(this.mBuilder.mNotification.icon, resources.getDimensionPixelSize(R$dimen.notification_large_icon_width) - resources.getDimensionPixelSize(R$dimen.notification_big_circle_margin), resources.getDimensionPixelSize(R$dimen.notification_small_icon_size_as_large), this.mBuilder.getColor()));
            } else {
                remoteViews.setImageViewBitmap(R$id.icon, createColoredBitmap(this.mBuilder.mNotification.icon, -1));
            }
        }
        if (this.mBuilder.mContentTitle != null) {
            remoteViews.setTextViewText(R$id.title, this.mBuilder.mContentTitle);
        }
        if (this.mBuilder.mContentText != null) {
            remoteViews.setTextViewText(R$id.text, this.mBuilder.mContentText);
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z6 = Build$VERSION.SDK_INT < 21 && this.mBuilder.mLargeIcon != null;
        if (this.mBuilder.mContentInfo != null) {
            remoteViews.setTextViewText(R$id.info, this.mBuilder.mContentInfo);
            remoteViews.setViewVisibility(R$id.info, 0);
        } else if (this.mBuilder.mNumber > 0) {
            if (this.mBuilder.mNumber > resources.getInteger(R$integer.status_bar_notification_info_maxnum)) {
                remoteViews.setTextViewText(R$id.info, resources.getString(R$string.status_bar_notification_info_overflow));
            } else {
                remoteViews.setTextViewText(R$id.info, NumberFormat.getIntegerInstance().format(this.mBuilder.mNumber));
            }
            remoteViews.setViewVisibility(R$id.info, 0);
        } else {
            remoteViews.setViewVisibility(R$id.info, 8);
            if (this.mBuilder.mSubText != null || Build$VERSION.SDK_INT < 16) {
                z4 = false;
            } else {
                remoteViews.setTextViewText(R$id.text, this.mBuilder.mSubText);
                if (this.mBuilder.mContentText != null) {
                    remoteViews.setTextViewText(R$id.text2, this.mBuilder.mContentText);
                    remoteViews.setViewVisibility(R$id.text2, 0);
                    z4 = true;
                } else {
                    remoteViews.setViewVisibility(R$id.text2, 8);
                    z4 = false;
                }
            }
            if (z4 && Build$VERSION.SDK_INT >= 16) {
                if (z2) {
                    remoteViews.setTextViewTextSize(R$id.text, 0, resources.getDimensionPixelSize(R$dimen.notification_subtext_size));
                }
                remoteViews.setViewPadding(R$id.line1, 0, 0, 0, 0);
            }
            if (this.mBuilder.getWhenIfShowing() != 0) {
                if (this.mBuilder.mUseChronometer && Build$VERSION.SDK_INT >= 16) {
                    remoteViews.setViewVisibility(R$id.chronometer, 0);
                    remoteViews.setLong(R$id.chronometer, "setBase", this.mBuilder.getWhenIfShowing() + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                    remoteViews.setBoolean(R$id.chronometer, "setStarted", true);
                } else {
                    remoteViews.setViewVisibility(R$id.time, 0);
                    remoteViews.setLong(R$id.time, "setTime", this.mBuilder.getWhenIfShowing());
                }
                z6 = true;
            }
            remoteViews.setViewVisibility(R$id.right_side, !z6 ? 0 : 8);
            remoteViews.setViewVisibility(R$id.line3, z3 ? 0 : 8);
            return remoteViews;
        }
        z3 = true;
        z6 = true;
        if (this.mBuilder.mSubText != null) {
            z4 = false;
        }
        if (z4) {
            if (z2) {
            }
            remoteViews.setViewPadding(R$id.line1, 0, 0, 0, 0);
        }
        if (this.mBuilder.getWhenIfShowing() != 0) {
        }
        remoteViews.setViewVisibility(R$id.right_side, !z6 ? 0 : 8);
        remoteViews.setViewVisibility(R$id.line3, z3 ? 0 : 8);
        return remoteViews;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public Bitmap createColoredBitmap(int i, int i2) {
        return createColoredBitmap(i, i2, 0);
    }

    private Bitmap createColoredBitmap(int i, int i2, int i3) {
        Drawable drawable = this.mBuilder.mContext.getResources().getDrawable(i);
        int intrinsicWidth = i3 == 0 ? drawable.getIntrinsicWidth() : i3;
        if (i3 == 0) {
            i3 = drawable.getIntrinsicHeight();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, i3, Bitmap$Config.ARGB_8888);
        drawable.setBounds(0, 0, intrinsicWidth, i3);
        if (i2 != 0) {
            drawable.mutate().setColorFilter(new PorterDuffColorFilter(i2, PorterDuff$Mode.SRC_IN));
        }
        drawable.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    private Bitmap createIconWithBackground(int i, int i2, int i3, int i4) {
        int i5 = R$drawable.notification_icon_background;
        if (i4 == 0) {
            i4 = 0;
        }
        Bitmap bitmapCreateColoredBitmap = createColoredBitmap(i5, i4, i2);
        Canvas canvas = new Canvas(bitmapCreateColoredBitmap);
        Drawable drawableMutate = this.mBuilder.mContext.getResources().getDrawable(i).mutate();
        drawableMutate.setFilterBitmap(true);
        int i6 = (i2 - i3) / 2;
        int i7 = i3 + i6;
        drawableMutate.setBounds(i6, i6, i7, i7);
        drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff$Mode.SRC_ATOP));
        drawableMutate.draw(canvas);
        return bitmapCreateColoredBitmap;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void buildIntoRemoteViews(RemoteViews remoteViews, RemoteViews remoteViews2) {
        hideNormalContent(remoteViews);
        remoteViews.removeAllViews(R$id.notification_main_column);
        remoteViews.addView(R$id.notification_main_column, remoteViews2.clone());
        remoteViews.setViewVisibility(R$id.notification_main_column, 0);
        if (Build$VERSION.SDK_INT >= 21) {
            remoteViews.setViewPadding(R$id.notification_main_column_container, 0, calculateTopPadding(), 0, 0);
        }
    }

    private void hideNormalContent(RemoteViews remoteViews) {
        remoteViews.setViewVisibility(R$id.title, 8);
        remoteViews.setViewVisibility(R$id.text2, 8);
        remoteViews.setViewVisibility(R$id.text, 8);
    }

    private int calculateTopPadding() {
        Resources resources = this.mBuilder.mContext.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.notification_top_pad);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.notification_top_pad_large_text);
        float fConstrain = (constrain(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
        return Math.round(((1.0f - fConstrain) * dimensionPixelSize) + (fConstrain * dimensionPixelSize2));
    }
}
