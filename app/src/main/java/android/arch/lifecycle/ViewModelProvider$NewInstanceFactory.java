package android.arch.lifecycle;

import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class ViewModelProvider$NewInstanceFactory implements ViewModelProvider$Factory {
    @Override // android.arch.lifecycle.ViewModelProvider$Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Cannot create an instance of " + cls, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Cannot create an instance of " + cls, e2);
        }
    }
}
