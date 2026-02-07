package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.ComponentCallbacks2;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class ReportFragment extends Fragment {
    private static final String REPORT_FRAGMENT_TAG = "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag";
    private ReportFragment$ActivityInitializationListener mProcessListener;

    public static void injectIfNeededIn(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new ReportFragment(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    static ReportFragment get(Activity activity) {
        return (ReportFragment) activity.getFragmentManager().findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    private void dispatchCreate(ReportFragment$ActivityInitializationListener reportFragment$ActivityInitializationListener) {
        if (reportFragment$ActivityInitializationListener != null) {
            reportFragment$ActivityInitializationListener.onCreate();
        }
    }

    private void dispatchStart(ReportFragment$ActivityInitializationListener reportFragment$ActivityInitializationListener) {
        if (reportFragment$ActivityInitializationListener != null) {
            reportFragment$ActivityInitializationListener.onStart();
        }
    }

    private void dispatchResume(ReportFragment$ActivityInitializationListener reportFragment$ActivityInitializationListener) {
        if (reportFragment$ActivityInitializationListener != null) {
            reportFragment$ActivityInitializationListener.onResume();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        dispatchCreate(this.mProcessListener);
        dispatch(Lifecycle$Event.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        dispatchStart(this.mProcessListener);
        dispatch(Lifecycle$Event.ON_START);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        dispatchResume(this.mProcessListener);
        dispatch(Lifecycle$Event.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        dispatch(Lifecycle$Event.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        dispatch(Lifecycle$Event.ON_STOP);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        dispatch(Lifecycle$Event.ON_DESTROY);
        this.mProcessListener = null;
    }

    private void dispatch(Lifecycle$Event lifecycle$Event) {
        ComponentCallbacks2 activity = getActivity();
        if (activity instanceof LifecycleRegistryOwner) {
            ((LifecycleRegistryOwner) activity).getLifecycle().handleLifecycleEvent(lifecycle$Event);
        } else if (activity instanceof LifecycleOwner) {
            Lifecycle lifecycle = ((LifecycleOwner) activity).getLifecycle();
            if (lifecycle instanceof LifecycleRegistry) {
                ((LifecycleRegistry) lifecycle).handleLifecycleEvent(lifecycle$Event);
            }
        }
    }

    void setProcessListener(ReportFragment$ActivityInitializationListener reportFragment$ActivityInitializationListener) {
        this.mProcessListener = reportFragment$ActivityInitializationListener;
    }
}
