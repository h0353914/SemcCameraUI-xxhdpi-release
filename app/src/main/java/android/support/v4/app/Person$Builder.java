package android.support.v4.app;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: classes.dex */
public class Person$Builder {

    @Nullable
    IconCompat mIcon;
    boolean mIsBot;
    boolean mIsImportant;

    @Nullable
    String mKey;

    @Nullable
    CharSequence mName;

    @Nullable
    String mUri;

    public Person$Builder() {
    }

    Person$Builder(Person person) {
        this.mName = person.mName;
        this.mIcon = person.mIcon;
        this.mUri = person.mUri;
        this.mKey = person.mKey;
        this.mIsBot = person.mIsBot;
        this.mIsImportant = person.mIsImportant;
    }

    @NonNull
    public Person$Builder setName(@Nullable CharSequence charSequence) {
        this.mName = charSequence;
        return this;
    }

    @NonNull
    public Person$Builder setIcon(@Nullable IconCompat iconCompat) {
        this.mIcon = iconCompat;
        return this;
    }

    @NonNull
    public Person$Builder setUri(@Nullable String str) {
        this.mUri = str;
        return this;
    }

    @NonNull
    public Person$Builder setKey(@Nullable String str) {
        this.mKey = str;
        return this;
    }

    @NonNull
    public Person$Builder setBot(boolean z) {
        this.mIsBot = z;
        return this;
    }

    @NonNull
    public Person$Builder setImportant(boolean z) {
        this.mIsImportant = z;
        return this;
    }

    @NonNull
    public Person build() {
        return new Person(this);
    }
}
