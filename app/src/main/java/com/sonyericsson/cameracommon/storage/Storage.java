package com.sonyericsson.cameracommon.storage;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

public interface Storage {
    void addStorageReadyStateListener(Storage$StorageReadyStateListener storage$StorageReadyStateListener);

    void addStorageStateListener(Storage$StorageStateListener storage$StorageStateListener);

    boolean canPushStoreRequest(Storage$StorageType storage$StorageType);

    void cancelDataLoad(long j);

    void cancelDataLoad(boolean z);

    boolean checkValidUri(Uri uri);

    Storage$StorageWriteNotifier createNotifier(Storage$StorageType storage$StorageType, int i);

    List<Storage$StorageType> getAvailableStorage();

    Storage$StorageState getCurrentState(Storage$StorageType storage$StorageType);

    long getRemainStorage(Storage$StorageType storage$StorageType);

    Uri getSdGrantedUri();

    boolean isStorageActivated();

    boolean isStorageReadable();

    boolean isStorageReadable(Storage$StorageType storage$StorageType);

    void removeStorageReadyStateListener(Storage$StorageReadyStateListener storage$StorageReadyStateListener);

    void removeStorageStateListener(Storage$StorageStateListener storage$StorageStateListener);

    void requestCreateContentInfoSync(ArrayList<Uri> arrayList, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener);

    void requestDataLoad(int i, Uri uri, boolean z, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener);

    void requestDataLoad(int i, boolean z, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener);

    void requestLastDataLoad(int i, boolean z, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener);

    void requestLoad(Uri uri, int i, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener);

    void requestLoad(byte[] bArr, int i, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener);

    boolean requestStore(SavingRequest savingRequest, Storage$StorageType storage$StorageType, Storage$OnStoreCompletedListener storage$OnStoreCompletedListener);
}
