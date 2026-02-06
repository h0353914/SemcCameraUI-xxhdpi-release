package android.arch.lifecycle;

import android.support.annotation.NonNull;

public interface ViewModelProvider$Factory {
    @NonNull
    <T extends ViewModel> T create(@NonNull Class<T> cls);
}
