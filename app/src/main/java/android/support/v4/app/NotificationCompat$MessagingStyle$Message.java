package android.support.v4.app;

import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public final class NotificationCompat$MessagingStyle$Message {
    static final String KEY_DATA_MIME_TYPE = "type";
    static final String KEY_DATA_URI = "uri";
    static final String KEY_EXTRAS_BUNDLE = "extras";
    static final String KEY_NOTIFICATION_PERSON = "sender_person";
    static final String KEY_PERSON = "person";
    static final String KEY_SENDER = "sender";
    static final String KEY_TEXT = "text";
    static final String KEY_TIMESTAMP = "time";

    @Nullable
    private String mDataMimeType;

    @Nullable
    private Uri mDataUri;
    private Bundle mExtras;

    @Nullable
    private final Person mPerson;
    private final CharSequence mText;
    private final long mTimestamp;

    public NotificationCompat$MessagingStyle$Message(CharSequence charSequence, long j, @Nullable Person person) {
        this.mExtras = new Bundle();
        this.mText = charSequence;
        this.mTimestamp = j;
        this.mPerson = person;
    }

    @Deprecated
    public NotificationCompat$MessagingStyle$Message(CharSequence charSequence, long j, CharSequence charSequence2) {
        this(charSequence, j, new Person$Builder().setName(charSequence2).build());
    }

    public NotificationCompat$MessagingStyle$Message setData(String str, Uri uri) {
        this.mDataMimeType = str;
        this.mDataUri = uri;
        return this;
    }

    @NonNull
    public CharSequence getText() {
        return this.mText;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    @NonNull
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Nullable
    @Deprecated
    public CharSequence getSender() {
        if (this.mPerson == null) {
            return null;
        }
        return this.mPerson.getName();
    }

    @Nullable
    public Person getPerson() {
        return this.mPerson;
    }

    @Nullable
    public String getDataMimeType() {
        return this.mDataMimeType;
    }

    @Nullable
    public Uri getDataUri() {
        return this.mDataUri;
    }

    private Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.mText != null) {
            bundle.putCharSequence("text", this.mText);
        }
        bundle.putLong("time", this.mTimestamp);
        if (this.mPerson != null) {
            bundle.putCharSequence("sender", this.mPerson.getName());
            if (Build$VERSION.SDK_INT >= 28) {
                bundle.putParcelable("sender_person", this.mPerson.toAndroidPerson());
            } else {
                bundle.putBundle("person", this.mPerson.toBundle());
            }
        }
        if (this.mDataMimeType != null) {
            bundle.putString("type", this.mDataMimeType);
        }
        if (this.mDataUri != null) {
            bundle.putParcelable("uri", this.mDataUri);
        }
        if (this.mExtras != null) {
            bundle.putBundle("extras", this.mExtras);
        }
        return bundle;
    }

    @NonNull
    static Bundle[] getBundleArrayForMessages(List<NotificationCompat$MessagingStyle$Message> list) {
        Bundle[] bundleArr = new Bundle[list.size()];
        int size = list.size();
        for (int i = 0; i < size; i++) {
            bundleArr[i] = list.get(i).toBundle();
        }
        return bundleArr;
    }

    @NonNull
    static List<NotificationCompat$MessagingStyle$Message> getMessagesFromBundleArray(Parcelable[] parcelableArr) {
        NotificationCompat$MessagingStyle$Message messageFromBundle;
        ArrayList arrayList = new ArrayList(parcelableArr.length);
        for (int i = 0; i < parcelableArr.length; i++) {
            if ((parcelableArr[i] instanceof Bundle) && (messageFromBundle = getMessageFromBundle((Bundle) parcelableArr[i])) != null) {
                arrayList.add(messageFromBundle);
            }
        }
        return arrayList;
    }

    @Nullable
    static NotificationCompat$MessagingStyle$Message getMessageFromBundle(Bundle bundle) {
        Person personBuild;
        try {
            if (bundle.containsKey("text") && bundle.containsKey("time")) {
                if (bundle.containsKey("person")) {
                    personBuild = Person.fromBundle(bundle.getBundle("person"));
                } else if (bundle.containsKey("sender_person") && Build$VERSION.SDK_INT >= 28) {
                    personBuild = Person.fromAndroidPerson((android.app.Person) bundle.getParcelable("sender_person"));
                } else {
                    personBuild = bundle.containsKey("sender") ? new Person$Builder().setName(bundle.getCharSequence("sender")).build() : null;
                }
                NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message = new NotificationCompat$MessagingStyle$Message(bundle.getCharSequence("text"), bundle.getLong("time"), personBuild);
                if (bundle.containsKey("type") && bundle.containsKey("uri")) {
                    notificationCompat$MessagingStyle$Message.setData(bundle.getString("type"), (Uri) bundle.getParcelable("uri"));
                }
                if (bundle.containsKey("extras")) {
                    notificationCompat$MessagingStyle$Message.getExtras().putAll(bundle.getBundle("extras"));
                }
                return notificationCompat$MessagingStyle$Message;
            }
            return null;
        } catch (ClassCastException unused) {
            return null;
        }
    }
}
