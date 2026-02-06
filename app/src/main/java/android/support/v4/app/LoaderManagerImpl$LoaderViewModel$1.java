package android.support.v4.app;

import android.arch.lifecycle.ViewModel;
import android.arch.lifecycle.ViewModelProvider$Factory;
import android.support.annotation.NonNull;

class LoaderManagerImpl$LoaderViewModel$1 implements ViewModelProvider$Factory {
    LoaderManagerImpl$LoaderViewModel$1() {
    }

    @Override // android.arch.lifecycle.ViewModelProvider$Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> cls) {
        return new LoaderManagerImpl$LoaderViewModel();
    }
}
