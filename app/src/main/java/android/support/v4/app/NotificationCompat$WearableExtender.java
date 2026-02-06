package android.support.v4.app;

import android.app.Notification;
import android.app.Notification$Action;
import android.app.Notification$Action$Builder;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class NotificationCompat$WearableExtender implements NotificationCompat$Extender {
    private static final int DEFAULT_CONTENT_ICON_GRAVITY = 8388613;
    private static final int DEFAULT_FLAGS = 1;
    private static final int DEFAULT_GRAVITY = 80;
    private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
    private static final int FLAG_BIG_PICTURE_AMBIENT = 32;
    private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
    private static final int FLAG_HINT_AVOID_BACKGROUND_CLIPPING = 16;
    private static final int FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY = 64;
    private static final int FLAG_HINT_HIDE_ICON = 2;
    private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
    private static final int FLAG_START_SCROLL_BOTTOM = 8;
    private static final String KEY_ACTIONS = "actions";
    private static final String KEY_BACKGROUND = "background";
    private static final String KEY_BRIDGE_TAG = "bridgeTag";
    private static final String KEY_CONTENT_ACTION_INDEX = "contentActionIndex";
    private static final String KEY_CONTENT_ICON = "contentIcon";
    private static final String KEY_CONTENT_ICON_GRAVITY = "contentIconGravity";
    private static final String KEY_CUSTOM_CONTENT_HEIGHT = "customContentHeight";
    private static final String KEY_CUSTOM_SIZE_PRESET = "customSizePreset";
    private static final String KEY_DISMISSAL_ID = "dismissalId";
    private static final String KEY_DISPLAY_INTENT = "displayIntent";
    private static final String KEY_FLAGS = "flags";
    private static final String KEY_GRAVITY = "gravity";
    private static final String KEY_HINT_SCREEN_TIMEOUT = "hintScreenTimeout";
    private static final String KEY_PAGES = "pages";
    public static final int SCREEN_TIMEOUT_LONG = -1;
    public static final int SCREEN_TIMEOUT_SHORT = 0;
    public static final int SIZE_DEFAULT = 0;
    public static final int SIZE_FULL_SCREEN = 5;
    public static final int SIZE_LARGE = 4;
    public static final int SIZE_MEDIUM = 3;
    public static final int SIZE_SMALL = 2;
    public static final int SIZE_XSMALL = 1;
    public static final int UNSET_ACTION_INDEX = -1;
    private ArrayList<NotificationCompat$Action> mActions;
    private Bitmap mBackground;
    private String mBridgeTag;
    private int mContentActionIndex;
    private int mContentIcon;
    private int mContentIconGravity;
    private int mCustomContentHeight;
    private int mCustomSizePreset;
    private String mDismissalId;
    private PendingIntent mDisplayIntent;
    private int mFlags;
    private int mGravity;
    private int mHintScreenTimeout;
    private ArrayList<Notification> mPages;

    /* JADX INFO: renamed from: clone, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m1clone() throws CloneNotSupportedException {
        return clone();
    }

    public NotificationCompat$WearableExtender() {
        this.mActions = new ArrayList<>();
        this.mFlags = 1;
        this.mPages = new ArrayList<>();
        this.mContentIconGravity = 8388613;
        this.mContentActionIndex = -1;
        this.mCustomSizePreset = 0;
        this.mGravity = 80;
    }

    public NotificationCompat$WearableExtender(Notification notification) {
        this.mActions = new ArrayList<>();
        this.mFlags = 1;
        this.mPages = new ArrayList<>();
        this.mContentIconGravity = 8388613;
        this.mContentActionIndex = -1;
        this.mCustomSizePreset = 0;
        this.mGravity = 80;
        Bundle extras = NotificationCompat.getExtras(notification);
        Bundle bundle = extras != null ? extras.getBundle("android.wearable.EXTENSIONS") : null;
        if (bundle != null) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("actions");
            if (Build$VERSION.SDK_INT >= 16 && parcelableArrayList != null) {
                NotificationCompat$Action[] notificationCompat$ActionArr = new NotificationCompat$Action[parcelableArrayList.size()];
                for (int i = 0; i < notificationCompat$ActionArr.length; i++) {
                    if (Build$VERSION.SDK_INT >= 20) {
                        notificationCompat$ActionArr[i] = NotificationCompat.getActionCompatFromAction((Notification$Action) parcelableArrayList.get(i));
                    } else if (Build$VERSION.SDK_INT >= 16) {
                        notificationCompat$ActionArr[i] = NotificationCompatJellybean.getActionFromBundle((Bundle) parcelableArrayList.get(i));
                    }
                }
                Collections.addAll(this.mActions, notificationCompat$ActionArr);
            }
            this.mFlags = bundle.getInt("flags", 1);
            this.mDisplayIntent = (PendingIntent) bundle.getParcelable("displayIntent");
            Notification[] notificationArrayFromBundle = NotificationCompat.getNotificationArrayFromBundle(bundle, "pages");
            if (notificationArrayFromBundle != null) {
                Collections.addAll(this.mPages, notificationArrayFromBundle);
            }
            this.mBackground = (Bitmap) bundle.getParcelable("background");
            this.mContentIcon = bundle.getInt("contentIcon");
            this.mContentIconGravity = bundle.getInt("contentIconGravity", 8388613);
            this.mContentActionIndex = bundle.getInt("contentActionIndex", -1);
            this.mCustomSizePreset = bundle.getInt("customSizePreset", 0);
            this.mCustomContentHeight = bundle.getInt("customContentHeight");
            this.mGravity = bundle.getInt("gravity", 80);
            this.mHintScreenTimeout = bundle.getInt("hintScreenTimeout");
            this.mDismissalId = bundle.getString("dismissalId");
            this.mBridgeTag = bundle.getString("bridgeTag");
        }
    }

    @Override // android.support.v4.app.NotificationCompat$Extender
    public NotificationCompat$Builder extend(NotificationCompat$Builder notificationCompat$Builder) {
        Bundle bundle = new Bundle();
        if (!this.mActions.isEmpty()) {
            if (Build$VERSION.SDK_INT >= 16) {
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.mActions.size());
                for (NotificationCompat$Action notificationCompat$Action : this.mActions) {
                    if (Build$VERSION.SDK_INT >= 20) {
                        arrayList.add(getActionFromActionCompat(notificationCompat$Action));
                    } else if (Build$VERSION.SDK_INT >= 16) {
                        arrayList.add(NotificationCompatJellybean.getBundleForAction(notificationCompat$Action));
                    }
                }
                bundle.putParcelableArrayList("actions", arrayList);
            } else {
                bundle.putParcelableArrayList("actions", null);
            }
        }
        if (this.mFlags != 1) {
            bundle.putInt("flags", this.mFlags);
        }
        if (this.mDisplayIntent != null) {
            bundle.putParcelable("displayIntent", this.mDisplayIntent);
        }
        if (!this.mPages.isEmpty()) {
            bundle.putParcelableArray("pages", (Parcelable[]) this.mPages.toArray(new Notification[this.mPages.size()]));
        }
        if (this.mBackground != null) {
            bundle.putParcelable("background", this.mBackground);
        }
        if (this.mContentIcon != 0) {
            bundle.putInt("contentIcon", this.mContentIcon);
        }
        if (this.mContentIconGravity != 8388613) {
            bundle.putInt("contentIconGravity", this.mContentIconGravity);
        }
        if (this.mContentActionIndex != -1) {
            bundle.putInt("contentActionIndex", this.mContentActionIndex);
        }
        if (this.mCustomSizePreset != 0) {
            bundle.putInt("customSizePreset", this.mCustomSizePreset);
        }
        if (this.mCustomContentHeight != 0) {
            bundle.putInt("customContentHeight", this.mCustomContentHeight);
        }
        if (this.mGravity != 80) {
            bundle.putInt("gravity", this.mGravity);
        }
        if (this.mHintScreenTimeout != 0) {
            bundle.putInt("hintScreenTimeout", this.mHintScreenTimeout);
        }
        if (this.mDismissalId != null) {
            bundle.putString("dismissalId", this.mDismissalId);
        }
        if (this.mBridgeTag != null) {
            bundle.putString("bridgeTag", this.mBridgeTag);
        }
        notificationCompat$Builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
        return notificationCompat$Builder;
    }

    @RequiresApi(20)
    private static Notification$Action getActionFromActionCompat(NotificationCompat$Action notificationCompat$Action) {
        Bundle bundle;
        Notification$Action$Builder notification$Action$Builder = new Notification$Action$Builder(notificationCompat$Action.getIcon(), notificationCompat$Action.getTitle(), notificationCompat$Action.getActionIntent());
        if (notificationCompat$Action.getExtras() != null) {
            bundle = new Bundle(notificationCompat$Action.getExtras());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", notificationCompat$Action.getAllowGeneratedReplies());
        if (Build$VERSION.SDK_INT >= 24) {
            notification$Action$Builder.setAllowGeneratedReplies(notificationCompat$Action.getAllowGeneratedReplies());
        }
        notification$Action$Builder.addExtras(bundle);
        RemoteInput[] remoteInputs = notificationCompat$Action.getRemoteInputs();
        if (remoteInputs != null) {
            for (android.app.RemoteInput remoteInput : RemoteInput.fromCompat(remoteInputs)) {
                notification$Action$Builder.addRemoteInput(remoteInput);
            }
        }
        return notification$Action$Builder.build();
    }

    public NotificationCompat$WearableExtender clone() {
        NotificationCompat$WearableExtender notificationCompat$WearableExtender = new NotificationCompat$WearableExtender();
        notificationCompat$WearableExtender.mActions = new ArrayList<>(this.mActions);
        notificationCompat$WearableExtender.mFlags = this.mFlags;
        notificationCompat$WearableExtender.mDisplayIntent = this.mDisplayIntent;
        notificationCompat$WearableExtender.mPages = new ArrayList<>(this.mPages);
        notificationCompat$WearableExtender.mBackground = this.mBackground;
        notificationCompat$WearableExtender.mContentIcon = this.mContentIcon;
        notificationCompat$WearableExtender.mContentIconGravity = this.mContentIconGravity;
        notificationCompat$WearableExtender.mContentActionIndex = this.mContentActionIndex;
        notificationCompat$WearableExtender.mCustomSizePreset = this.mCustomSizePreset;
        notificationCompat$WearableExtender.mCustomContentHeight = this.mCustomContentHeight;
        notificationCompat$WearableExtender.mGravity = this.mGravity;
        notificationCompat$WearableExtender.mHintScreenTimeout = this.mHintScreenTimeout;
        notificationCompat$WearableExtender.mDismissalId = this.mDismissalId;
        notificationCompat$WearableExtender.mBridgeTag = this.mBridgeTag;
        return notificationCompat$WearableExtender;
    }

    public NotificationCompat$WearableExtender addAction(NotificationCompat$Action notificationCompat$Action) {
        this.mActions.add(notificationCompat$Action);
        return this;
    }

    public NotificationCompat$WearableExtender addActions(List<NotificationCompat$Action> list) {
        this.mActions.addAll(list);
        return this;
    }

    public NotificationCompat$WearableExtender clearActions() {
        this.mActions.clear();
        return this;
    }

    public List<NotificationCompat$Action> getActions() {
        return this.mActions;
    }

    public NotificationCompat$WearableExtender setDisplayIntent(PendingIntent pendingIntent) {
        this.mDisplayIntent = pendingIntent;
        return this;
    }

    public PendingIntent getDisplayIntent() {
        return this.mDisplayIntent;
    }

    public NotificationCompat$WearableExtender addPage(Notification notification) {
        this.mPages.add(notification);
        return this;
    }

    public NotificationCompat$WearableExtender addPages(List<Notification> list) {
        this.mPages.addAll(list);
        return this;
    }

    public NotificationCompat$WearableExtender clearPages() {
        this.mPages.clear();
        return this;
    }

    public List<Notification> getPages() {
        return this.mPages;
    }

    public NotificationCompat$WearableExtender setBackground(Bitmap bitmap) {
        this.mBackground = bitmap;
        return this;
    }

    public Bitmap getBackground() {
        return this.mBackground;
    }

    @Deprecated
    public NotificationCompat$WearableExtender setContentIcon(int i) {
        this.mContentIcon = i;
        return this;
    }

    @Deprecated
    public int getContentIcon() {
        return this.mContentIcon;
    }

    @Deprecated
    public NotificationCompat$WearableExtender setContentIconGravity(int i) {
        this.mContentIconGravity = i;
        return this;
    }

    @Deprecated
    public int getContentIconGravity() {
        return this.mContentIconGravity;
    }

    public NotificationCompat$WearableExtender setContentAction(int i) {
        this.mContentActionIndex = i;
        return this;
    }

    public int getContentAction() {
        return this.mContentActionIndex;
    }

    @Deprecated
    public NotificationCompat$WearableExtender setGravity(int i) {
        this.mGravity = i;
        return this;
    }

    @Deprecated
    public int getGravity() {
        return this.mGravity;
    }

    @Deprecated
    public NotificationCompat$WearableExtender setCustomSizePreset(int i) {
        this.mCustomSizePreset = i;
        return this;
    }

    @Deprecated
    public int getCustomSizePreset() {
        return this.mCustomSizePreset;
    }

    @Deprecated
    public NotificationCompat$WearableExtender setCustomContentHeight(int i) {
        this.mCustomContentHeight = i;
        return this;
    }

    @Deprecated
    public int getCustomContentHeight() {
        return this.mCustomContentHeight;
    }

    public NotificationCompat$WearableExtender setStartScrollBottom(boolean z) {
        setFlag(8, z);
        return this;
    }

    public boolean getStartScrollBottom() {
        return (this.mFlags & 8) != 0;
    }

    public NotificationCompat$WearableExtender setContentIntentAvailableOffline(boolean z) {
        setFlag(1, z);
        return this;
    }

    public boolean getContentIntentAvailableOffline() {
        return (this.mFlags & 1) != 0;
    }

    @Deprecated
    public NotificationCompat$WearableExtender setHintHideIcon(boolean z) {
        setFlag(2, z);
        return this;
    }

    @Deprecated
    public boolean getHintHideIcon() {
        return (this.mFlags & 2) != 0;
    }

    @Deprecated
    public NotificationCompat$WearableExtender setHintShowBackgroundOnly(boolean z) {
        setFlag(4, z);
        return this;
    }

    @Deprecated
    public boolean getHintShowBackgroundOnly() {
        return (this.mFlags & 4) != 0;
    }

    @Deprecated
    public NotificationCompat$WearableExtender setHintAvoidBackgroundClipping(boolean z) {
        setFlag(16, z);
        return this;
    }

    @Deprecated
    public boolean getHintAvoidBackgroundClipping() {
        return (this.mFlags & 16) != 0;
    }

    @Deprecated
    public NotificationCompat$WearableExtender setHintScreenTimeout(int i) {
        this.mHintScreenTimeout = i;
        return this;
    }

    @Deprecated
    public int getHintScreenTimeout() {
        return this.mHintScreenTimeout;
    }

    public NotificationCompat$WearableExtender setHintAmbientBigPicture(boolean z) {
        setFlag(32, z);
        return this;
    }

    public boolean getHintAmbientBigPicture() {
        return (this.mFlags & 32) != 0;
    }

    public NotificationCompat$WearableExtender setHintContentIntentLaunchesActivity(boolean z) {
        setFlag(64, z);
        return this;
    }

    public boolean getHintContentIntentLaunchesActivity() {
        return (this.mFlags & 64) != 0;
    }

    public NotificationCompat$WearableExtender setDismissalId(String str) {
        this.mDismissalId = str;
        return this;
    }

    public String getDismissalId() {
        return this.mDismissalId;
    }

    public NotificationCompat$WearableExtender setBridgeTag(String str) {
        this.mBridgeTag = str;
        return this;
    }

    public String getBridgeTag() {
        return this.mBridgeTag;
    }

    private void setFlag(int i, boolean z) {
        if (z) {
            this.mFlags = i | this.mFlags;
        } else {
            this.mFlags = (~i) & this.mFlags;
        }
    }
}
