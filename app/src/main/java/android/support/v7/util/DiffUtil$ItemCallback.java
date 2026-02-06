package android.support.v7.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public abstract class DiffUtil$ItemCallback<T> {
    public abstract boolean areContentsTheSame(@NonNull T t, @NonNull T t2);

    public abstract boolean areItemsTheSame(@NonNull T t, @NonNull T t2);

    @Nullable
    public Object getChangePayload(@NonNull T t, @NonNull T t2) {
        return null;
    }
}
