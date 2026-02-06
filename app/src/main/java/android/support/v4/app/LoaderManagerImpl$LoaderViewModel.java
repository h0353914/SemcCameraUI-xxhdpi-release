package android.support.v4.app;

import android.arch.lifecycle.ViewModel;
import android.arch.lifecycle.ViewModelProvider;
import android.arch.lifecycle.ViewModelProvider$Factory;
import android.arch.lifecycle.ViewModelStore;
import android.support.annotation.NonNull;
import android.support.v4.util.SparseArrayCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class LoaderManagerImpl$LoaderViewModel extends ViewModel {
    private static final ViewModelProvider$Factory FACTORY = new LoaderManagerImpl$LoaderViewModel$1();
    private SparseArrayCompat<LoaderManagerImpl$LoaderInfo> mLoaders = new SparseArrayCompat<>();
    private boolean mCreatingLoader = false;

    LoaderManagerImpl$LoaderViewModel() {
    }

    @NonNull
    static LoaderManagerImpl$LoaderViewModel getInstance(ViewModelStore viewModelStore) {
        return (LoaderManagerImpl$LoaderViewModel) new ViewModelProvider(viewModelStore, FACTORY).get(LoaderManagerImpl$LoaderViewModel.class);
    }

    void startCreatingLoader() {
        this.mCreatingLoader = true;
    }

    boolean isCreatingLoader() {
        return this.mCreatingLoader;
    }

    void finishCreatingLoader() {
        this.mCreatingLoader = false;
    }

    void putLoader(int i, @NonNull LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo) {
        this.mLoaders.put(i, loaderManagerImpl$LoaderInfo);
    }

    <D> LoaderManagerImpl$LoaderInfo<D> getLoader(int i) {
        return this.mLoaders.get(i);
    }

    void removeLoader(int i) {
        this.mLoaders.remove(i);
    }

    boolean hasRunningLoaders() {
        int size = this.mLoaders.size();
        for (int i = 0; i < size; i++) {
            if (this.mLoaders.valueAt(i).isCallbackWaitingForData()) {
                return true;
            }
        }
        return false;
    }

    void markForRedelivery() {
        int size = this.mLoaders.size();
        for (int i = 0; i < size; i++) {
            this.mLoaders.valueAt(i).markForRedelivery();
        }
    }

    @Override // android.arch.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        int size = this.mLoaders.size();
        for (int i = 0; i < size; i++) {
            this.mLoaders.valueAt(i).destroy(true);
        }
        this.mLoaders.clear();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.mLoaders.size() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < this.mLoaders.size(); i++) {
                LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfoValueAt = this.mLoaders.valueAt(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mLoaders.keyAt(i));
                printWriter.print(": ");
                printWriter.println(loaderManagerImpl$LoaderInfoValueAt.toString());
                loaderManagerImpl$LoaderInfoValueAt.dump(str2, fileDescriptor, printWriter, strArr);
            }
        }
    }
}
