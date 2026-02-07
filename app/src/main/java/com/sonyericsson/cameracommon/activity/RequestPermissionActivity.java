package com.sonyericsson.cameracommon.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.app.KeyguardManager;
import android.content.Intent;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.PermissionGroupInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class RequestPermissionActivity extends Activity {
    private static int HIGHEST_PRIORITY = 0;
    private static int INVALID_ID = -1;
    private static int LOWEST_PRIORITY = 2147483646;
    public static final String TAG = "RequestPermissionActivity";
    private final int REQUEST_CODE_FOR_PERMISSION = 256;
    private final int ID_FOR_PRE_DIALOG = 513;
    private final int ID_FOR_POST_DIALOG = 514;
    private List<RequestPermissionActivity$PermissionState> mPermissionStateList = null;
    private RequestPermissionActivity$PermissionState mCurrentPermissionState = null;
    private AlertDialog mCurrentShownDialog = null;

    static /* synthetic */ int access$000() {
        return INVALID_ID;
    }

    static /* synthetic */ int access$100() {
        return HIGHEST_PRIORITY;
    }

    static /* synthetic */ RequestPermissionActivity$PermissionState access$200(RequestPermissionActivity requestPermissionActivity) {
        return requestPermissionActivity.mCurrentPermissionState;
    }

    static /* synthetic */ void access$300(RequestPermissionActivity requestPermissionActivity, String[] strArr) {
        requestPermissionActivity.requestPermissions(strArr);
    }

    static /* synthetic */ AlertDialog access$402(RequestPermissionActivity requestPermissionActivity, AlertDialog alertDialog) {
        requestPermissionActivity.mCurrentShownDialog = alertDialog;
        return alertDialog;
    }

    static /* synthetic */ void access$500(RequestPermissionActivity requestPermissionActivity) {
        requestPermissionActivity.doNextAction();
    }

    static /* synthetic */ String access$600(RequestPermissionActivity requestPermissionActivity, RequestPermissionActivity$PermissionGroup requestPermissionActivity$PermissionGroup) {
        return requestPermissionActivity.getPermissionGroupLabel(requestPermissionActivity$PermissionGroup);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        if (CamLog.VERBOSE) {
            CamLog.d("onCreate() start");
        }
        super.onCreate(bundle);
        setContentView(2131492892);
        if (isRestrictedMode()) {
            if (isSecure()) {
                getWindow().addFlags(524288);
            } else {
                dismissKeyguard();
            }
        }
        Intent intent = getIntent();
        if (intent == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("onCreate() finish():intent = null");
            }
            finishActivity();
            return;
        }
        this.mPermissionStateList = createPermissionStateList(intent.getStringArrayListExtra("permissions_list"));
        updateCurrentState();
        if (this.mCurrentPermissionState == null) {
            finishActivity();
            if (CamLog.VERBOSE) {
                CamLog.d("onCreate() finish()");
                return;
            }
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onCreate() end");
        }
    }

    private void dismissKeyguard() {
        ((KeyguardManager) getSystemService(KeyguardManager.class)).requestDismissKeyguard(this, null);
    }

    private void finishActivity() {
        setResult(-1, new Intent());
        finish();
    }

    private List<RequestPermissionActivity$PermissionState> createPermissionStateList(List<String> list) {
        if (CamLog.VERBOSE) {
            CamLog.d("createPermissionStateList() start");
        }
        ArrayList arrayList = new ArrayList();
        for (RequestPermissionActivity$PermissionCategory requestPermissionActivity$PermissionCategory : RequestPermissionActivity$PermissionCategory.values()) {
            ArrayList arrayList2 = new ArrayList();
            for (RequestPermissionActivity$PermissionGroup requestPermissionActivity$PermissionGroup : requestPermissionActivity$PermissionCategory.getGroupList()) {
                if (list != null) {
                    Iterator<String> it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            String next = it.next();
                            if (requestPermissionActivity$PermissionGroup.contains(next) && checkSelfPermission(next) != 0) {
                                arrayList2.add(requestPermissionActivity$PermissionGroup);
                                break;
                            }
                        }
                    }
                }
            }
            if (arrayList2.size() != 0) {
                arrayList.add(new RequestPermissionActivity$PermissionState(this, requestPermissionActivity$PermissionCategory, arrayList2));
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("createPermissionStateList() end:PermissionState num:" + arrayList.size() + ", " + arrayList.toString());
        }
        return arrayList;
    }

    private void updateCurrentState() {
        if (CamLog.VERBOSE) {
            CamLog.d("updateCurrentState() start");
        }
        int priority = HIGHEST_PRIORITY - 1;
        if (this.mCurrentPermissionState != null) {
            priority = this.mCurrentPermissionState.getCategory().getPriority();
            if (CamLog.VERBOSE) {
                CamLog.d("updateCurrentState() before state=" + this.mCurrentPermissionState.getCategory().name());
            }
        } else if (CamLog.VERBOSE) {
            CamLog.d("updateCurrentState() before state=null");
        }
        int i = LOWEST_PRIORITY + 1;
        int i2 = i;
        RequestPermissionActivity$PermissionState requestPermissionActivity$PermissionState = null;
        for (RequestPermissionActivity$PermissionState requestPermissionActivity$PermissionState2 : this.mPermissionStateList) {
            int priority2 = requestPermissionActivity$PermissionState2.getCategory().getPriority();
            boolean zIsRequested = requestPermissionActivity$PermissionState2.isRequested();
            if (priority < priority2 && priority2 < i2 && !zIsRequested) {
                requestPermissionActivity$PermissionState = requestPermissionActivity$PermissionState2;
                i2 = priority2;
            }
        }
        if (this.mCurrentPermissionState == requestPermissionActivity$PermissionState) {
            this.mCurrentPermissionState = null;
        } else {
            this.mCurrentPermissionState = requestPermissionActivity$PermissionState;
        }
        if (CamLog.VERBOSE) {
            if (this.mCurrentPermissionState != null) {
                CamLog.d("updateCurrentState() after state=" + this.mCurrentPermissionState.getCategory().name());
            } else {
                CamLog.d("updateCurrentState() after state=null");
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("updateCurrentState() end");
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (CamLog.VERBOSE) {
            CamLog.d("onResume() start");
        }
        super.onResume();
        if (CamLog.VERBOSE) {
            if (this.mCurrentPermissionState != null) {
                CamLog.d("onResume() state=" + this.mCurrentPermissionState.getCategory().name());
            } else {
                CamLog.d("onResume() state=null");
            }
        }
        doNextAction();
        if (CamLog.VERBOSE) {
            CamLog.d("onResume() end");
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        if (CamLog.VERBOSE) {
            CamLog.d("onStop() start");
        }
        super.onStop();
        if (this.mCurrentShownDialog != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("onStop() Current dialog is shown.");
            }
            finishActivity();
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onStop() end");
        }
    }

    private void doNextAction() {
        RequestPermissionActivity$PermissionAction requestPermissionActivity$PermissionActionDecideNextAction = decideNextAction();
        while (requestPermissionActivity$PermissionActionDecideNextAction == RequestPermissionActivity$PermissionAction.UPDATE_STATE) {
            updateCurrentState();
            requestPermissionActivity$PermissionActionDecideNextAction = decideNextAction();
        }
        boolean zDoAction = doAction(requestPermissionActivity$PermissionActionDecideNextAction);
        if (requestPermissionActivity$PermissionActionDecideNextAction == RequestPermissionActivity$PermissionAction.SHOW_POST_DIALOG) {
            updateCurrentState();
        }
        if (zDoAction) {
            return;
        }
        doNextAction();
    }

    private RequestPermissionActivity$PermissionAction decideNextAction() {
        RequestPermissionActivity$PermissionAction requestPermissionActivity$PermissionAction;
        if (CamLog.VERBOSE) {
            CamLog.d("decideNextAction() start");
        }
        if (this.mCurrentShownDialog != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("decideNextAction() end:DO_NOTHING");
            }
            return RequestPermissionActivity$PermissionAction.DO_NOTHING;
        }
        if (this.mCurrentPermissionState == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("decideNextAction() end:FINISH");
            }
            return RequestPermissionActivity$PermissionAction.FINISH;
        }
        if (this.mCurrentPermissionState.isRequested()) {
            if (this.mCurrentPermissionState.areAllPermissionsGranted()) {
                requestPermissionActivity$PermissionAction = RequestPermissionActivity$PermissionAction.UPDATE_STATE;
            } else {
                requestPermissionActivity$PermissionAction = RequestPermissionActivity$PermissionAction.SHOW_POST_DIALOG;
            }
        } else if (isSecure() && isRestrictedMode()) {
            requestPermissionActivity$PermissionAction = RequestPermissionActivity$PermissionAction.SHOW_POST_DIALOG;
        } else {
            requestPermissionActivity$PermissionAction = RequestPermissionActivity$PermissionAction.REQUEST_PERMISSIONS;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("decideNextAction() end:" + requestPermissionActivity$PermissionAction.name());
        }
        return requestPermissionActivity$PermissionAction;
    }

    private boolean doAction(RequestPermissionActivity$PermissionAction requestPermissionActivity$PermissionAction) {
        if (CamLog.VERBOSE) {
            CamLog.d("doAction() start:" + requestPermissionActivity$PermissionAction.name());
        }
        String[] requestPermissionList = new String[0];
        if (this.mCurrentPermissionState != null) {
            requestPermissionList = this.mCurrentPermissionState.getRequestPermissionList();
        }
        switch (requestPermissionActivity$PermissionAction) {
            case REQUEST_PERMISSIONS:
                ArrayList arrayList = new ArrayList();
                for (String str : requestPermissionList) {
                    if (shouldShowRequestPermissionRationale(str)) {
                        Iterator<RequestPermissionActivity$PermissionGroup> it = this.mCurrentPermissionState.getRequestGroupList().iterator();
                        while (true) {
                            if (it.hasNext()) {
                                RequestPermissionActivity$PermissionGroup next = it.next();
                                if (next.contains(str) && next.getPreDialogMessageId() != INVALID_ID && !arrayList.contains(next)) {
                                    arrayList.add(next);
                                }
                            }
                        }
                    }
                }
                if (arrayList.size() == 0) {
                    requestPermissions(requestPermissionList);
                } else {
                    showPermissionPreDialog(arrayList);
                }
                break;
            case SHOW_POST_DIALOG:
                ArrayList arrayList2 = new ArrayList();
                for (String str2 : requestPermissionList) {
                    if (checkSelfPermission(str2) != 0) {
                        Iterator<RequestPermissionActivity$PermissionGroup> it2 = this.mCurrentPermissionState.getRequestGroupList().iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                RequestPermissionActivity$PermissionGroup next2 = it2.next();
                                if (next2.contains(str2) && next2.getPostDialogMessageId() != INVALID_ID && !arrayList2.contains(next2)) {
                                    arrayList2.add(next2);
                                }
                            }
                        }
                    }
                }
                if (arrayList2.size() == 0) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("doAction() end:not done");
                    }
                    return false;
                }
                showPermissionPostDialog(arrayList2);
                break;
                break;
            case FINISH:
                finishActivity();
                break;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("doAction() end:done");
        }
        return true;
    }

    private void requestPermissions(String[] strArr) {
        if (CamLog.VERBOSE) {
            CamLog.d("requestPermissions() start");
        }
        requestPermissions(strArr, 256);
        this.mCurrentPermissionState.setRequested();
        if (CamLog.VERBOSE) {
            CamLog.d("requestPermissions() end");
        }
    }

    private void showPermissionPreDialog(List<RequestPermissionActivity$PermissionGroup> list) {
        showPermissionDialog(513, list);
    }

    private void showPermissionPostDialog(List<RequestPermissionActivity$PermissionGroup> list) {
        showPermissionDialog(514, list);
    }

    private void showPermissionDialog(int i, List<RequestPermissionActivity$PermissionGroup> list) {
        if (CamLog.VERBOSE) {
            CamLog.d("showPermissionDialog() start");
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this);
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
        String string = getResources().getString(getApplicationInfo().labelRes);
        if (i == 513) {
            ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(2131492967, (ViewGroup) null);
            ((TextView) viewGroup.findViewById(2131296289)).setText(String.format(Locale.US, getResources().getString(2131690047), string));
            ListView listView = (ListView) viewGroup.findViewById(2131296493);
            if (listView != null) {
                listView.setAdapter((ListAdapter) new RequestPermissionActivity$PermissionAdapter(this, this, i, list));
            }
            alertDialog$Builder.setTitle(String.format(Locale.US, getResources().getString(2131690048), string));
            alertDialog$Builder.setView(viewGroup);
            alertDialog$Builder.setOnDismissListener(new RequestPermissionActivity$1(this));
            alertDialog$Builder.setPositiveButton(2131689975, new RequestPermissionActivity$2(this));
            this.mCurrentShownDialog = alertDialog$Builder.create();
            this.mCurrentShownDialog.getWindow().addFlags(128);
            this.mCurrentShownDialog.show();
        } else if (i == 514) {
            ViewGroup viewGroup2 = (ViewGroup) layoutInflaterFrom.inflate(2131492964, (ViewGroup) null);
            ((TextView) viewGroup2.findViewById(2131296289)).setText(2131690049);
            ListView listView2 = (ListView) viewGroup2.findViewById(2131296493);
            if (listView2 != null) {
                listView2.setAdapter((ListAdapter) new RequestPermissionActivity$PermissionAdapter(this, this, i, list));
            }
            ((TextView) viewGroup2.findViewById(2131296288)).setText(2131690050);
            alertDialog$Builder.setTitle(String.format(Locale.US, getResources().getString(2131690051), string));
            alertDialog$Builder.setView(viewGroup2);
            alertDialog$Builder.setCancelable(false);
            alertDialog$Builder.setPositiveButton(2131690046, new RequestPermissionActivity$3(this));
            alertDialog$Builder.setNegativeButton(2131689666, new RequestPermissionActivity$4(this));
            alertDialog$Builder.setOnDismissListener(new RequestPermissionActivity$5(this));
            this.mCurrentShownDialog = alertDialog$Builder.create();
            this.mCurrentShownDialog.show();
        }
        if (CamLog.VERBOSE) {
            CamLog.d("showPermissionDialog() end");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String getPermissionGroupLabel(RequestPermissionActivity$PermissionGroup requestPermissionActivity$PermissionGroup) {
        String string;
        if (CamLog.VERBOSE) {
            CamLog.d("getPermissionGroupLabel() start");
        }
        String groupName = requestPermissionActivity$PermissionGroup.getGroupName();
        try {
            PermissionGroupInfo permissionGroupInfo = getPackageManager().getPermissionGroupInfo(groupName, 128);
            if (permissionGroupInfo != null) {
                CharSequence charSequenceLoadLabel = permissionGroupInfo.loadLabel(getPackageManager());
                if (TextUtils.isEmpty(charSequenceLoadLabel)) {
                    string = "";
                } else {
                    string = charSequenceLoadLabel.toString();
                    try {
                        if (CamLog.VERBOSE) {
                            CamLog.d("getPermissionGroupLabel label :" + groupName);
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
    protected void onDestroy() {
        if (CamLog.VERBOSE) {
            CamLog.d("onDestroy() start");
        }
        super.onDestroy();
        this.mCurrentPermissionState = null;
        this.mPermissionStateList = null;
        this.mCurrentShownDialog = null;
        if (CamLog.VERBOSE) {
            CamLog.d("onDestroy() end");
        }
    }

    private boolean isRestrictedMode() {
        return ((KeyguardManager) getSystemService("keyguard")).isKeyguardLocked();
    }

    private boolean isSecure() {
        return ((KeyguardManager) getSystemService("keyguard")).isKeyguardSecure();
    }
}
