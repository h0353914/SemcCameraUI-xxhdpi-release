package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;

public class ViewModelProvider {
    private static final String DEFAULT_KEY = "android.arch.lifecycle.ViewModelProvider.DefaultKey";
    private final ViewModelProvider$Factory mFactory;
    private final ViewModelStore mViewModelStore;

    public ViewModelProvider(@NonNull ViewModelStoreOwner viewModelStoreOwner, @NonNull ViewModelProvider$Factory viewModelProvider$Factory) {
        this(viewModelStoreOwner.getViewModelStore(), viewModelProvider$Factory);
    }

    public ViewModelProvider(@NonNull ViewModelStore viewModelStore, @NonNull ViewModelProvider$Factory viewModelProvider$Factory) {
        this.mFactory = viewModelProvider$Factory;
        this.mViewModelStore = viewModelStore;
    }

    @NonNull
    @MainThread
    public <T extends ViewModel> T get(@NonNull Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) get("android.arch.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    @NonNull
    @MainThread
    public <T extends ViewModel> T get(@NonNull String str, @NonNull Class<T> cls) {
        T t = (T) this.mViewModelStore.get(str);
        if (cls.isInstance(t)) {
            return t;
        }
        T t2 = (T) this.mFactory.create(cls);
        this.mViewModelStore.put(str, t2);
        return t2;
    }
}
