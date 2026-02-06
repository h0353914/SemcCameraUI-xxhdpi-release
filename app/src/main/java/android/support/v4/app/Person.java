package android.support.v4.app;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.graphics.drawable.IconCompat;

public class Person {
    private static final String ICON_KEY = "icon";
    private static final String IS_BOT_KEY = "isBot";
    private static final String IS_IMPORTANT_KEY = "isImportant";
    private static final String KEY_KEY = "key";
    private static final String NAME_KEY = "name";
    private static final String URI_KEY = "uri";

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

    @NonNull
    public static Person fromBundle(@NonNull Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("icon");
        return new Person$Builder().setName(bundle.getCharSequence("name")).setIcon(bundle2 != null ? IconCompat.createFromBundle(bundle2) : null).setUri(bundle.getString("uri")).setKey(bundle.getString("key")).setBot(bundle.getBoolean("isBot")).setImportant(bundle.getBoolean("isImportant")).build();
    }

    @NonNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static Person fromAndroidPerson(@NonNull android.app.Person person) {
        return new Person$Builder().setName(person.getName()).setIcon(person.getIcon() != null ? IconCompat.createFromIcon(person.getIcon()) : null).setUri(person.getUri()).setKey(person.getKey()).setBot(person.isBot()).setImportant(person.isImportant()).build();
    }

    Person(Person$Builder person$Builder) {
        this.mName = person$Builder.mName;
        this.mIcon = person$Builder.mIcon;
        this.mUri = person$Builder.mUri;
        this.mKey = person$Builder.mKey;
        this.mIsBot = person$Builder.mIsBot;
        this.mIsImportant = person$Builder.mIsImportant;
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.mName);
        bundle.putBundle("icon", this.mIcon != null ? this.mIcon.toBundle() : null);
        bundle.putString("uri", this.mUri);
        bundle.putString("key", this.mKey);
        bundle.putBoolean("isBot", this.mIsBot);
        bundle.putBoolean("isImportant", this.mIsImportant);
        return bundle;
    }

    @NonNull
    public Person$Builder toBuilder() {
        return new Person$Builder(this);
    }

    @NonNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public android.app.Person toAndroidPerson() {
        return new android.app.Person$Builder().setName(getName()).setIcon(getIcon() != null ? getIcon().toIcon() : null).setUri(getUri()).setKey(getKey()).setBot(isBot()).setImportant(isImportant()).build();
    }

    @Nullable
    public CharSequence getName() {
        return this.mName;
    }

    @Nullable
    public IconCompat getIcon() {
        return this.mIcon;
    }

    @Nullable
    public String getUri() {
        return this.mUri;
    }

    @Nullable
    public String getKey() {
        return this.mKey;
    }

    public boolean isBot() {
        return this.mIsBot;
    }

    public boolean isImportant() {
        return this.mIsImportant;
    }
}
