package android.support.v4.app;

import android.os.Bundle;

public final class NotificationCompat$Action$WearableExtender implements NotificationCompat$Action$Extender {
    private static final int DEFAULT_FLAGS = 1;
    private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
    private static final int FLAG_AVAILABLE_OFFLINE = 1;
    private static final int FLAG_HINT_DISPLAY_INLINE = 4;
    private static final int FLAG_HINT_LAUNCHES_ACTIVITY = 2;
    private static final String KEY_CANCEL_LABEL = "cancelLabel";
    private static final String KEY_CONFIRM_LABEL = "confirmLabel";
    private static final String KEY_FLAGS = "flags";
    private static final String KEY_IN_PROGRESS_LABEL = "inProgressLabel";
    private CharSequence mCancelLabel;
    private CharSequence mConfirmLabel;
    private int mFlags;
    private CharSequence mInProgressLabel;

    /* JADX INFO: renamed from: clone, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m0clone() throws CloneNotSupportedException {
        return clone();
    }

    public NotificationCompat$Action$WearableExtender() {
        this.mFlags = 1;
    }

    public NotificationCompat$Action$WearableExtender(NotificationCompat$Action notificationCompat$Action) {
        this.mFlags = 1;
        Bundle bundle = notificationCompat$Action.getExtras().getBundle("android.wearable.EXTENSIONS");
        if (bundle != null) {
            this.mFlags = bundle.getInt("flags", 1);
            this.mInProgressLabel = bundle.getCharSequence("inProgressLabel");
            this.mConfirmLabel = bundle.getCharSequence("confirmLabel");
            this.mCancelLabel = bundle.getCharSequence("cancelLabel");
        }
    }

    @Override // android.support.v4.app.NotificationCompat$Action$Extender
    public NotificationCompat$Action$Builder extend(NotificationCompat$Action$Builder notificationCompat$Action$Builder) {
        Bundle bundle = new Bundle();
        if (this.mFlags != 1) {
            bundle.putInt("flags", this.mFlags);
        }
        if (this.mInProgressLabel != null) {
            bundle.putCharSequence("inProgressLabel", this.mInProgressLabel);
        }
        if (this.mConfirmLabel != null) {
            bundle.putCharSequence("confirmLabel", this.mConfirmLabel);
        }
        if (this.mCancelLabel != null) {
            bundle.putCharSequence("cancelLabel", this.mCancelLabel);
        }
        notificationCompat$Action$Builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
        return notificationCompat$Action$Builder;
    }

    public NotificationCompat$Action$WearableExtender clone() {
        NotificationCompat$Action$WearableExtender notificationCompat$Action$WearableExtender = new NotificationCompat$Action$WearableExtender();
        notificationCompat$Action$WearableExtender.mFlags = this.mFlags;
        notificationCompat$Action$WearableExtender.mInProgressLabel = this.mInProgressLabel;
        notificationCompat$Action$WearableExtender.mConfirmLabel = this.mConfirmLabel;
        notificationCompat$Action$WearableExtender.mCancelLabel = this.mCancelLabel;
        return notificationCompat$Action$WearableExtender;
    }

    public NotificationCompat$Action$WearableExtender setAvailableOffline(boolean z) {
        setFlag(1, z);
        return this;
    }

    public boolean isAvailableOffline() {
        return (this.mFlags & 1) != 0;
    }

    private void setFlag(int i, boolean z) {
        if (z) {
            this.mFlags = i | this.mFlags;
        } else {
            this.mFlags = (~i) & this.mFlags;
        }
    }

    @Deprecated
    public NotificationCompat$Action$WearableExtender setInProgressLabel(CharSequence charSequence) {
        this.mInProgressLabel = charSequence;
        return this;
    }

    @Deprecated
    public CharSequence getInProgressLabel() {
        return this.mInProgressLabel;
    }

    @Deprecated
    public NotificationCompat$Action$WearableExtender setConfirmLabel(CharSequence charSequence) {
        this.mConfirmLabel = charSequence;
        return this;
    }

    @Deprecated
    public CharSequence getConfirmLabel() {
        return this.mConfirmLabel;
    }

    @Deprecated
    public NotificationCompat$Action$WearableExtender setCancelLabel(CharSequence charSequence) {
        this.mCancelLabel = charSequence;
        return this;
    }

    @Deprecated
    public CharSequence getCancelLabel() {
        return this.mCancelLabel;
    }

    public NotificationCompat$Action$WearableExtender setHintLaunchesActivity(boolean z) {
        setFlag(2, z);
        return this;
    }

    public boolean getHintLaunchesActivity() {
        return (this.mFlags & 2) != 0;
    }

    public NotificationCompat$Action$WearableExtender setHintDisplayActionInline(boolean z) {
        setFlag(4, z);
        return this;
    }

    public boolean getHintDisplayActionInline() {
        return (this.mFlags & 4) != 0;
    }
}
