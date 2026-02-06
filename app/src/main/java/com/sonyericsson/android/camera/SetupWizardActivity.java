package com.sonyericsson.android.camera;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Intent;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.PermissionGroupInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.TextView;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.SettingUtil;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnClickListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnDismissListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;
import com.sonyericsson.android.camera.view.tutorial.TutorialController;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog$Builder;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog$Cancelable;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.ProductConfig;
import com.sonymobile.cameracommon.research.parameters.Event$WizardResult;
import java.util.HashMap;
import java.util.Locale;

public class SetupWizardActivity extends Activity {
    static final int BACK_KEY = 1;
    static final String GEO_TAG_RESULT = "geo_tag_result";
    private static final long ON_RESUME_DELAY_MILLIS = 15;
    static final String SIDE_SENSE_RESULT = "side_sense_result";
    private static final String TAG = "SetupWizardActivity";
    private static final boolean TRACE = true;
    private Handler mMainHandler;
    private OrientationEventListener mOrientationEventListener;
    String[] REQUEST_LOCATION_PERMISSION = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    private final int REQUEST_CODE_FOR_PERMISSION = 256;
    private TutorialController mTutorial = null;
    private ViewGroup mRootView = null;
    private RotatableDialog mOptionalRuntimePermissionDialog = null;
    private int mOrientation = 0;
    private Intent mResultData = new Intent();
    private boolean mSkippedFirstOnResume = false;
    private boolean mIsGeotagEnabled = false;
    private MessageDialogController mMessageDialog = null;
    private SetupWizardActivity$MessageDialogCallbackAdapter mMessageCallback = new SetupWizardActivity$MessageDialogCallbackAdapter(null);
    private MessageDialogController$MessageDialogOnClickListener mPositiveClickListener = new SetupWizardActivity$1(this);
    private MessageDialogController$MessageDialogOnClickListener mNegativeClickListener = new SetupWizardActivity$2(this);
    private MessageDialogController$MessageDialogOnDismissListener mDismissListener = new SetupWizardActivity$3(this);
    private SetupWizardActivity$InterruptedBy mInterruptedBy = SetupWizardActivity$InterruptedBy.NONE;
    private final Runnable mOnResumeTasks = new SetupWizardActivity$6(this);
    private final TutorialController$OnClickSetupWizardButtonListener mOnClickTutorialButtonListener = new SetupWizardActivity$7(this);

    private boolean in(int i, int i2, int i3) {
        return i >= i2 && i < i3;
    }

    static /* synthetic */ boolean access$100(SetupWizardActivity setupWizardActivity) {
        return setupWizardActivity.mIsGeotagEnabled;
    }

    static /* synthetic */ boolean access$1000(SetupWizardActivity setupWizardActivity) {
        return setupWizardActivity.isPortrait();
    }

    static /* synthetic */ boolean access$102(SetupWizardActivity setupWizardActivity, boolean z) {
        setupWizardActivity.mIsGeotagEnabled = z;
        return z;
    }

    static /* synthetic */ void access$1100(String str) {
        trace(str);
    }

    static /* synthetic */ MessageDialogController access$1200(SetupWizardActivity setupWizardActivity) {
        return setupWizardActivity.mMessageDialog;
    }

    static /* synthetic */ RotatableDialog access$1300(SetupWizardActivity setupWizardActivity) {
        return setupWizardActivity.mOptionalRuntimePermissionDialog;
    }

    static /* synthetic */ RotatableDialog access$1302(SetupWizardActivity setupWizardActivity, RotatableDialog rotatableDialog) {
        setupWizardActivity.mOptionalRuntimePermissionDialog = rotatableDialog;
        return rotatableDialog;
    }

    static /* synthetic */ void access$1400(SetupWizardActivity setupWizardActivity) {
        setupWizardActivity.setupLayout();
    }

    static /* synthetic */ boolean access$1500(SetupWizardActivity setupWizardActivity) {
        return setupWizardActivity.mSkippedFirstOnResume;
    }

    static /* synthetic */ boolean access$1502(SetupWizardActivity setupWizardActivity, boolean z) {
        setupWizardActivity.mSkippedFirstOnResume = z;
        return z;
    }

    static /* synthetic */ void access$1600(SetupWizardActivity setupWizardActivity) {
        setupWizardActivity.onResumeTasks();
    }

    static /* synthetic */ boolean access$1700(SetupWizardActivity setupWizardActivity) {
        return setupWizardActivity.isRestrictedMode();
    }

    static /* synthetic */ boolean access$1800(SetupWizardActivity setupWizardActivity) {
        return setupWizardActivity.isSecure();
    }

    static /* synthetic */ void access$1900(SetupWizardActivity setupWizardActivity) {
        setupWizardActivity.dismissKeyguard();
    }

    static /* synthetic */ void access$200(SetupWizardActivity setupWizardActivity, SetupWizardActivity$InterruptedBy setupWizardActivity$InterruptedBy) {
        setupWizardActivity.toExternalSettings(setupWizardActivity$InterruptedBy);
    }

    static /* synthetic */ TutorialController access$300(SetupWizardActivity setupWizardActivity) {
        return setupWizardActivity.mTutorial;
    }

    static /* synthetic */ void access$400(SetupWizardActivity setupWizardActivity) {
        setupWizardActivity.close();
    }

    static /* synthetic */ void access$500(SetupWizardActivity setupWizardActivity, boolean z) {
        setupWizardActivity.setSideSenseResult(z);
    }

    static /* synthetic */ void access$600(SetupWizardActivity setupWizardActivity) {
        setupWizardActivity.setupCompleted();
    }

    static /* synthetic */ void access$700(SetupWizardActivity setupWizardActivity, boolean z) {
        setupWizardActivity.setGeoTagResult(z);
    }

    static /* synthetic */ int access$800(SetupWizardActivity setupWizardActivity, int i) {
        return setupWizardActivity.getOrientation(i);
    }

    static /* synthetic */ int access$900(SetupWizardActivity setupWizardActivity) {
        return setupWizardActivity.mOrientation;
    }

    static /* synthetic */ int access$902(SetupWizardActivity setupWizardActivity, int i) {
        setupWizardActivity.mOrientation = i;
        return i;
    }

    private static void trace(String str) {
        CamLog.d(str);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        trace("onCreate() E");
        super.onCreate(bundle);
        if (isCalledFromOnLockScreen() && isRestrictedMode()) {
            getWindow().addFlags(524288);
        }
        getWindow().addFlags(256);
        getWindow().addFlags(512);
        this.mMessageDialog = new MessageDialogController(this, null, this.mPositiveClickListener, this.mNegativeClickListener, this.mMessageCallback, this.mDismissListener, this.mMessageCallback);
        this.mOrientation = LayoutOrientationResolver.getInstance().getConfigurationOrientation();
        this.mOrientationEventListener = new SetupWizardActivity$4(this, this);
        this.mOrientationEventListener.enable();
        setContentView(2131492893);
        this.mRootView = (ViewGroup) findViewById(2131296603);
        this.mTutorial = new TutorialController(this.mRootView, getWindow());
        this.mTutorial.setOnClickTutorialButtonListener(this.mOnClickTutorialButtonListener);
        this.mRootView.getViewTreeObserver().addOnWindowAttachListener(new SetupWizardActivity$5(this));
        trace("onCreate() X");
    }

    @Override // android.app.Activity
    protected void onResume() {
        trace("onResume() E");
        if (this.mMainHandler == null) {
            this.mMainHandler = new Handler(getMainLooper());
        }
        this.mMainHandler.removeCallbacks(this.mOnResumeTasks);
        if (this.mIsGeotagEnabled) {
            setGeoTagResult(GeotagManager.isGeoTagEnabled(Geotag.ON, this));
        }
        if (!this.mSkippedFirstOnResume) {
            this.mSkippedFirstOnResume = true;
            trace("onResume() --> postDelayed(mOnResumeTasks,15)");
            this.mMainHandler.postDelayed(this.mOnResumeTasks, 15L);
        } else {
            trace("onResume() --> onResumeTasks()");
            this.mSkippedFirstOnResume = false;
            onResumeTasks();
        }
        super.onResume();
        trace("onResume() X");
    }

    private void onResumeTasks() {
        trace("onResumeTasks() E");
        this.mOrientationEventListener.enable();
        fromExternalSettings();
        trace("onResumeTasks() X");
    }

    @Override // android.app.Activity
    protected void onPause() {
        trace("onPause() E");
        if (this.mMainHandler != null) {
            this.mMainHandler.removeCallbacks(this.mOnResumeTasks);
        }
        if (!this.mSkippedFirstOnResume) {
            if (CamLog.VERBOSE) {
                CamLog.d("onPause() --> onPauseTasks()");
            }
            onPauseTasks();
        }
        super.onPause();
        trace("onPause() X");
    }

    private void onPauseTasks() {
        trace("onPauseTasks() E");
        this.mOrientationEventListener.disable();
        if (this.mInterruptedBy == SetupWizardActivity$InterruptedBy.NONE) {
            setResult(0, this.mResultData);
            LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.OTHER);
            LocalResearchUtil.getInstance().closeSetupWizard();
            this.mTutorial.close();
            finish();
        }
        trace("onPauseTasks() X");
    }

    @Override // android.app.Activity
    public void onStop() {
        trace("onStop() E");
        super.onStop();
        trace("onStop() X");
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        trace("onDestroy() E");
        super.onDestroy();
        trace("onDestroy() X");
    }

    private boolean isPortrait() {
        return this.mOrientation == 1;
    }

    private void dismissKeyguard() {
        ((KeyguardManager) getSystemService(KeyguardManager.class)).requestDismissKeyguard(this, null);
    }

    private boolean isCalledFromOnLockScreen() {
        if (getCallingActivity() == null) {
            return false;
        }
        return CameraActivityOnLockScreen.class.getName().equals(getCallingActivity().getClassName());
    }

    private boolean isRestrictedMode() {
        return ((KeyguardManager) getSystemService("keyguard")).isKeyguardLocked();
    }

    private boolean isSecure() {
        return ((KeyguardManager) getSystemService("keyguard")).isKeyguardSecure();
    }

    private void setupLayout() {
        trace("setupLayout() E");
        ViewGroup$LayoutParams layoutParams = this.mRootView.getLayoutParams();
        Rect viewFinderSize = LayoutDependencyResolver.getViewFinderSize(this);
        int iHeight = viewFinderSize.height();
        int iWidth = viewFinderSize.width();
        layoutParams.width = iWidth;
        layoutParams.height = iHeight;
        this.mRootView.setLayoutParams(layoutParams);
        this.mRootView.setPivotX(0.0f);
        this.mRootView.setPivotY(0.0f);
        this.mRootView.setRotation(90.0f);
        this.mRootView.setTranslationX(iHeight);
        View viewFindViewById = findViewById(2131296602);
        ViewGroup$LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
        layoutParams2.width = iHeight;
        layoutParams2.height = iWidth - LayoutDependencyResolver.getNavigationBarMargin(this);
        viewFindViewById.setLayoutParams(layoutParams2);
        viewFindViewById.setBackgroundResource(2131231240);
        trace("setupLayout() X");
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mTutorial.backToPreviousPage()) {
            return;
        }
        LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.BACK_KEY);
        LocalResearchUtil.getInstance().closeSetupWizard();
        if (this.mResultData.hasExtra("geo_tag_result")) {
            if (this.mTutorial.getTutorialTypes().contains(TutorialController$TutorialType.SIDE_SENSE)) {
                setSideSenseResult(SettingUtil.isSideSenseEnabled(false));
            }
            setupCompleted();
        } else {
            setResult(1, this.mResultData);
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 27) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 27) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @SuppressLint({"StringFormatInvalid"})
    public void showOptionalRuntimePermissionDialog() {
        RotatableDialog$Builder rotatableDialog$Builder = new RotatableDialog$Builder(this);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this);
        rotatableDialog$Builder.setOnKeyListener(new SetupWizardActivity$KeyEventKiller(null));
        rotatableDialog$Builder.setTitle(String.format(Locale.US, getString(2131690051), getResources().getString(getApplicationInfo().labelRes)));
        ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(2131492965, (ViewGroup) null);
        TextView textView = (TextView) viewGroup.findViewById(2131296289);
        TextView textView2 = (TextView) viewGroup.findViewById(2131296477);
        TextView textView3 = (TextView) viewGroup.findViewById(2131296384);
        TextView textView4 = (TextView) viewGroup.findViewById(2131296288);
        textView.setText(2131690049);
        textView2.setText(getPermissionGroupLabel("android.permission.ACCESS_FINE_LOCATION"));
        textView3.setText(2131690053);
        textView4.setText(2131690050);
        rotatableDialog$Builder.setViewAsScrollable(viewGroup);
        rotatableDialog$Builder.setPositiveButton(2131690046, new SetupWizardActivity$8(this));
        rotatableDialog$Builder.setNegativeButton(2131689666, new SetupWizardActivity$9(this));
        rotatableDialog$Builder.setOnDismissListener(new SetupWizardActivity$10(this));
        rotatableDialog$Builder.setCancelable(RotatableDialog$Cancelable.TRUE, RotatableDialog$Cancelable.USE_DEFAULT);
        rotatableDialog$Builder.setOrientation(this.mOrientation);
        this.mOptionalRuntimePermissionDialog = rotatableDialog$Builder.createRotatableDialog();
        this.mOptionalRuntimePermissionDialog.show();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String getPermissionGroupLabel(String str) {
        String string;
        if (CamLog.VERBOSE) {
            CamLog.d("getPermissionGroupLabel() start");
        }
        try {
            String string2 = getPackageManager().getPermissionInfo(str, 128).group.toString();
            PermissionGroupInfo permissionGroupInfo = getPackageManager().getPermissionGroupInfo(string2, 128);
            if (permissionGroupInfo != null) {
                CharSequence charSequenceLoadLabel = permissionGroupInfo.loadLabel(getPackageManager());
                if (TextUtils.isEmpty(charSequenceLoadLabel)) {
                    string = "";
                } else {
                    string = charSequenceLoadLabel.toString();
                    try {
                        if (CamLog.VERBOSE) {
                            CamLog.d("getPermissionGroupLabel label :" + string2);
                        }
                    } catch (PackageManager$NameNotFoundException e) {
                        e = e;
                        CamLog.e("getPermissionGroupLabel(): " + e);
                    }
                }
            }
        } catch (PackageManager$NameNotFoundException e2) {
            e = e2;
            string = "";
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getPermissionGroupLabel() end");
        }
        return string;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        trace("onRequestPermissionsResult() E");
        super.onRequestPermissionsResult(i, strArr, iArr);
        HashMap map = new HashMap();
        if (strArr.length != 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                map.put(strArr[i2], Integer.valueOf(iArr[i2]));
            }
        }
        if (map.containsKey(this.REQUEST_LOCATION_PERMISSION[0]) && map.containsKey(this.REQUEST_LOCATION_PERMISSION[1])) {
            if (((Integer) map.get(this.REQUEST_LOCATION_PERMISSION[0])).intValue() == 0 && ((Integer) map.get(this.REQUEST_LOCATION_PERMISSION[1])).intValue() == 0) {
                setGeoTagResult(true);
                if (GeotagManager.isGeoTagEnabled(Geotag.ON, this)) {
                    if (!this.mTutorial.hasNext(TutorialController$TutorialType.SAVE_LOCATION)) {
                        close();
                    } else {
                        this.mTutorial.doNextAction(TutorialController$TutorialType.SAVE_LOCATION);
                    }
                } else {
                    MessageDialogRequest messageDialogRequest = new MessageDialogRequest();
                    messageDialogRequest.mDialogId = DialogId.LOCATION_SERVICE_DISABLE_ON_LAUNCH;
                    this.mMessageDialog.request(messageDialogRequest);
                }
            } else {
                setGeoTagResult(false);
                showOptionalRuntimePermissionDialog();
            }
        }
        trace("onRequestPermissionsResult() X");
    }

    private int getOrientation(int i) {
        int mountAngle = (i + (360 - ProductConfig.getMountAngle(this))) % 360;
        int i2 = isPortrait() ? 60 : 30;
        int i3 = 90 + i2;
        if (in(mountAngle, 90 - i2, i3)) {
            return 1;
        }
        int i4 = 270 - i2;
        return (!in(mountAngle, i3, i4) && in(mountAngle, i4, 270 + i2)) ? 1 : 2;
    }

    private void toExternalSettings(SetupWizardActivity$InterruptedBy setupWizardActivity$InterruptedBy) {
        this.mInterruptedBy = setupWizardActivity$InterruptedBy;
        switch (SetupWizardActivity$11.$SwitchMap$com$sonyericsson$android$camera$SetupWizardActivity$InterruptedBy[this.mInterruptedBy.ordinal()]) {
            case 1:
                setGeoTagResult(true);
                ApplicationLauncher.launchLocationSourceSettings(this);
                break;
            case 2:
                setGeoTagResult(true);
                requestPermissions(this.REQUEST_LOCATION_PERMISSION, 256);
                break;
            case 3:
                ApplicationLauncher.launchSideSenseSettings(this);
                break;
        }
    }

    private void fromExternalSettings() {
        int i = SetupWizardActivity$11.$SwitchMap$com$sonyericsson$android$camera$SetupWizardActivity$InterruptedBy[this.mInterruptedBy.ordinal()];
        if (i != 1) {
            if (i == 3) {
                setSideSenseResult(SettingUtil.isSideSenseEnabled(false));
                setupCompleted();
            }
        } else if (!this.mTutorial.hasNext(TutorialController$TutorialType.SAVE_LOCATION)) {
            close();
        } else {
            this.mTutorial.doNextAction(TutorialController$TutorialType.SAVE_LOCATION);
        }
        this.mInterruptedBy = SetupWizardActivity$InterruptedBy.NONE;
    }

    private void setSideSenseResult(boolean z) {
        this.mResultData.putExtra("side_sense_result", z);
    }

    private void setGeoTagResult(boolean z) {
        this.mResultData.putExtra("geo_tag_result", z);
    }

    private void setupCompleted() {
        setResult(-1, this.mResultData);
        finish();
    }

    private void close() {
        findViewById(2131296602).setVisibility(8);
        this.mTutorial.close();
        setupCompleted();
    }
}
