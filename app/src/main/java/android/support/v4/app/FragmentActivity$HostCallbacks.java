package android.support.v4.app;

import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender$SendIntentException;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class FragmentActivity$HostCallbacks extends FragmentHostCallback<FragmentActivity> {
    final /* synthetic */ FragmentActivity this$0;

    @Override // android.support.v4.app.FragmentHostCallback
    public /* bridge */ /* synthetic */ FragmentActivity onGetHost() {
        return onGetHost();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentActivity$HostCallbacks(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.this$0 = fragmentActivity;
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.this$0.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public boolean onShouldSaveFragmentState(Fragment fragment) {
        return !this.this$0.isFinishing();
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public LayoutInflater onGetLayoutInflater() {
        return this.this$0.getLayoutInflater().cloneInContext(this.this$0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.support.v4.app.FragmentHostCallback
    public FragmentActivity onGetHost() {
        return this.this$0;
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public void onSupportInvalidateOptionsMenu() {
        this.this$0.supportInvalidateOptionsMenu();
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i) {
        this.this$0.startActivityFromFragment(fragment, intent, i);
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i, @Nullable Bundle bundle) {
        this.this$0.startActivityFromFragment(fragment, intent, i, bundle);
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender$SendIntentException {
        this.this$0.startIntentSenderFromFragment(fragment, intentSender, i, intent, i2, i3, i4, bundle);
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public void onRequestPermissionsFromFragment(@NonNull Fragment fragment, @NonNull String[] strArr, int i) {
        this.this$0.requestPermissionsFromFragment(fragment, strArr, i);
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public boolean onShouldShowRequestPermissionRationale(@NonNull String str) {
        return ActivityCompat.shouldShowRequestPermissionRationale(this.this$0, str);
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public boolean onHasWindowAnimations() {
        return this.this$0.getWindow() != null;
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public int onGetWindowAnimations() {
        Window window = this.this$0.getWindow();
        if (window == null) {
            return 0;
        }
        return window.getAttributes().windowAnimations;
    }

    @Override // android.support.v4.app.FragmentHostCallback
    public void onAttachFragment(Fragment fragment) {
        this.this$0.onAttachFragment(fragment);
    }

    @Override // android.support.v4.app.FragmentHostCallback, android.support.v4.app.FragmentContainer
    @Nullable
    public View onFindViewById(int i) {
        return this.this$0.findViewById(i);
    }

    @Override // android.support.v4.app.FragmentHostCallback, android.support.v4.app.FragmentContainer
    public boolean onHasView() {
        Window window = this.this$0.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }
}
