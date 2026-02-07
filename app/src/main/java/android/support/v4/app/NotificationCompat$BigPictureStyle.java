package android.support.v4.app;

import android.app.Notification$BigPictureStyle;
import android.graphics.Bitmap;
import android.os.Build$VERSION;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$BigPictureStyle extends NotificationCompat$Style {
    private Bitmap mBigLargeIcon;
    private boolean mBigLargeIconSet;
    private Bitmap mPicture;

    public NotificationCompat$BigPictureStyle() {
    }

    public NotificationCompat$BigPictureStyle(NotificationCompat$Builder notificationCompat$Builder) {
        setBuilder(notificationCompat$Builder);
    }

    public NotificationCompat$BigPictureStyle setBigContentTitle(CharSequence charSequence) {
        this.mBigContentTitle = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        return this;
    }

    public NotificationCompat$BigPictureStyle setSummaryText(CharSequence charSequence) {
        this.mSummaryText = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        this.mSummaryTextSet = true;
        return this;
    }

    public NotificationCompat$BigPictureStyle bigPicture(Bitmap bitmap) {
        this.mPicture = bitmap;
        return this;
    }

    public NotificationCompat$BigPictureStyle bigLargeIcon(Bitmap bitmap) {
        this.mBigLargeIcon = bitmap;
        this.mBigLargeIconSet = true;
        return this;
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 16) {
            Notification$BigPictureStyle notification$BigPictureStyleBigPicture = new Notification$BigPictureStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle).bigPicture(this.mPicture);
            if (this.mBigLargeIconSet) {
                notification$BigPictureStyleBigPicture.bigLargeIcon(this.mBigLargeIcon);
            }
            if (this.mSummaryTextSet) {
                notification$BigPictureStyleBigPicture.setSummaryText(this.mSummaryText);
            }
        }
    }
}
