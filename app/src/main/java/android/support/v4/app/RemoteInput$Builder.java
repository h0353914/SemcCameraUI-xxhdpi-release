package android.support.v4.app;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.HashSet;
import java.util.Set;

public final class RemoteInput$Builder {
    private CharSequence[] mChoices;
    private CharSequence mLabel;
    private final String mResultKey;
    private final Set<String> mAllowedDataTypes = new HashSet();
    private final Bundle mExtras = new Bundle();
    private boolean mAllowFreeFormTextInput = true;

    public RemoteInput$Builder(@NonNull String str) {
        if (str == null) {
            throw new IllegalArgumentException("Result key can't be null");
        }
        this.mResultKey = str;
    }

    @NonNull
    public RemoteInput$Builder setLabel(@Nullable CharSequence charSequence) {
        this.mLabel = charSequence;
        return this;
    }

    @NonNull
    public RemoteInput$Builder setChoices(@Nullable CharSequence[] charSequenceArr) {
        this.mChoices = charSequenceArr;
        return this;
    }

    @NonNull
    public RemoteInput$Builder setAllowDataType(@NonNull String str, boolean z) {
        if (z) {
            this.mAllowedDataTypes.add(str);
        } else {
            this.mAllowedDataTypes.remove(str);
        }
        return this;
    }

    @NonNull
    public RemoteInput$Builder setAllowFreeFormInput(boolean z) {
        this.mAllowFreeFormTextInput = z;
        return this;
    }

    @NonNull
    public RemoteInput$Builder addExtras(@NonNull Bundle bundle) {
        if (bundle != null) {
            this.mExtras.putAll(bundle);
        }
        return this;
    }

    @NonNull
    public Bundle getExtras() {
        return this.mExtras;
    }

    @NonNull
    public RemoteInput build() {
        return new RemoteInput(this.mResultKey, this.mLabel, this.mChoices, this.mAllowFreeFormTextInput, this.mExtras, this.mAllowedDataTypes);
    }
}
