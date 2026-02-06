package com.sonyericsson.android.camera.view.modeselector;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.OperationApplicationException;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.RemoteException;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.ArrayList;
import java.util.List;

public class CapturingModeCollection {
    private static final int INVALID_POSITION = -1;
    private static final String[] PROTECTION = {"_id", "package", "activity", "mode_name", "selectoricon_id", "selectorlabel_id", "shortcuticon_id", "shortcutlabel_id", "descriptionlabel_id", "capture_type", "visibility_normal", "visibility_oneshot", "visibility_shortcut"};
    private static final String SORT_ASC = "sort_order ASC";
    private static final String TAG = "CapturingModeCollection";
    private static final String WHERE_WITH_ID = "_id=?";
    private final ContentResolver mResolver;

    public void release() {
    }

    private static CapturingModeAttributes convert(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("_id");
        int columnIndex2 = cursor.getColumnIndex("package");
        int columnIndex3 = cursor.getColumnIndex("activity");
        int columnIndex4 = cursor.getColumnIndex("mode_name");
        int columnIndex5 = cursor.getColumnIndex("selectoricon_id");
        int columnIndex6 = cursor.getColumnIndex("selectorlabel_id");
        int columnIndex7 = cursor.getColumnIndex("descriptionlabel_id");
        int columnIndex8 = cursor.getColumnIndex("shortcuticon_id");
        int columnIndex9 = cursor.getColumnIndex("shortcutlabel_id");
        int columnIndex10 = cursor.getColumnIndex("capture_type");
        int columnIndex11 = cursor.getColumnIndex("visibility_normal");
        int columnIndex12 = cursor.getColumnIndex("visibility_oneshot");
        int columnIndex13 = cursor.getColumnIndex("visibility_shortcut");
        long j = cursor.getLong(columnIndex);
        return new CapturingModeAttributes(Long.valueOf(j), cursor.getString(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4), cursor.getInt(columnIndex5), cursor.getInt(columnIndex6), cursor.getInt(columnIndex7), cursor.getInt(columnIndex8), cursor.getInt(columnIndex9), CapturingModeCollection$CaptureTypeCode.toCaptureType(cursor.getInt(columnIndex10)), CapturingModeCollection$VisibilityTypeCode.toVisibilityType(cursor.getInt(columnIndex11)), CapturingModeCollection$VisibilityTypeCode.toVisibilityType(cursor.getInt(columnIndex12)), CapturingModeCollection$VisibilityTypeCode.toVisibilityType(cursor.getInt(columnIndex13)));
    }

    private static ContentProviderOperation createUpdateSortOrderOperation(CapturingModeAttributes capturingModeAttributes, int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("createUpdateSortOrderOperation()");
        }
        return ContentProviderOperation.newUpdate(CameraCommonProviderConstants.CAPTURINGMODE_CONTENT_URI).withSelection("_id=?", new String[]{Long.toString(capturingModeAttributes.getId().longValue())}).withValue("sort_order", Integer.valueOf(i)).build();
    }

    private static ContentProviderOperation createInsertOperation(CapturingModeAttributes capturingModeAttributes, int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("createUpdateSortOrderOperation()");
        }
        return ContentProviderOperation.newUpdate(CameraCommonProviderConstants.CAPTURINGMODE_CONTENT_URI).withValue("package", capturingModeAttributes.getPackageName()).withValue("activity", capturingModeAttributes.getActivityName()).withValue("mode_name", capturingModeAttributes.getModeName()).withValue("sort_order", Integer.valueOf(i)).withValue("capture_type", Integer.valueOf(CapturingModeCollection$CaptureTypeCode.toCode(capturingModeAttributes.getInternalCaptureType()))).withValue("visibility_normal", Integer.valueOf(CapturingModeCollection$VisibilityTypeCode.toCode(capturingModeAttributes.isVisibleNormal()))).withValue("visibility_oneshot", Integer.valueOf(CapturingModeCollection$VisibilityTypeCode.toCode(capturingModeAttributes.isVisibleOneshot()))).withValue("visibility_shortcut", Integer.valueOf(CapturingModeCollection$VisibilityTypeCode.toCode(capturingModeAttributes.isVisibleShortcut()))).withValue("selectoricon_id", Integer.valueOf(capturingModeAttributes.getSelectorIconId())).withValue("selectorlabel_id", Integer.valueOf(capturingModeAttributes.getSelectorLabelId())).withValue("descriptionlabel_id", Integer.valueOf(capturingModeAttributes.getDescriptionLabelId())).withValue("shortcuticon_id", Integer.valueOf(capturingModeAttributes.getShortcutIconId())).withValue("shortcutlabel_id", Integer.valueOf(capturingModeAttributes.getShortcutLabelId())).build();
    }

    private static ContentProviderOperation createDeleteOperation(long j) {
        if (CamLog.VERBOSE) {
            CamLog.d("createDeleteOperation()");
        }
        return ContentProviderOperation.newDelete(CameraCommonProviderConstants.CAPTURINGMODE_CONTENT_URI).withSelection("_id=?", new String[]{Long.toString(j)}).build();
    }

    public CapturingModeCollection(ContentResolver contentResolver) {
        this.mResolver = contentResolver;
    }

    public List<CapturingModeAttributes> getCapturingModeList(CapturingModeAttributes$InternalCaptureType[] capturingModeAttributes$InternalCaptureTypeArr, CapturingModeAttributes$VisibilityType[] capturingModeAttributes$VisibilityTypeArr) {
        StringBuffer stringBuffer = new StringBuffer();
        if (capturingModeAttributes$InternalCaptureTypeArr.length > 0) {
            stringBuffer.append("(");
            for (CapturingModeAttributes$InternalCaptureType capturingModeAttributes$InternalCaptureType : capturingModeAttributes$InternalCaptureTypeArr) {
                int code = CapturingModeCollection$CaptureTypeCode.toCode(capturingModeAttributes$InternalCaptureType);
                if (capturingModeAttributes$InternalCaptureTypeArr[0] != capturingModeAttributes$InternalCaptureType) {
                    stringBuffer.append(" OR ");
                }
                stringBuffer.append("(capture_type=" + code + ")");
            }
            stringBuffer.append(")");
        }
        if (capturingModeAttributes$InternalCaptureTypeArr.length > 0 && capturingModeAttributes$VisibilityTypeArr.length > 0) {
            stringBuffer.append(" AND ");
        }
        if (capturingModeAttributes$VisibilityTypeArr.length > 0) {
            stringBuffer.append("(");
            for (CapturingModeAttributes$VisibilityType capturingModeAttributes$VisibilityType : capturingModeAttributes$VisibilityTypeArr) {
                if (capturingModeAttributes$VisibilityTypeArr[0] != capturingModeAttributes$VisibilityType) {
                    stringBuffer.append(" OR ");
                }
                stringBuffer.append("(" + capturingModeAttributes$VisibilityType.mColumn + "=1)");
            }
            stringBuffer.append(")");
        }
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = this.mResolver.query(CameraCommonProviderConstants.CAPTURINGMODE_CONTENT_URI, PROTECTION, stringBuffer.toString(), null, "sort_order ASC");
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(convert(cursorQuery));
                } finally {
                    cursorQuery.close();
                }
            }
        } else if (CamLog.VERBOSE) {
            CamLog.w("Fail to retrieve the capturing mode list from CameraCommonProvider.");
        }
        return arrayList;
    }

    private void unregisterCapturingModes(List<CapturingModeAttributes> list) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (CapturingModeAttributes capturingModeAttributes : list) {
            if (capturingModeAttributes.getId() != null) {
                arrayList.add(createDeleteOperation(capturingModeAttributes.getId().longValue()));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            this.mResolver.applyBatch("com.sonymobile.camerauicommon.provider", arrayList);
        } catch (OperationApplicationException e) {
            CamLog.e("Failed to unregister modes. Message : " + e.getMessage());
        } catch (RemoteException e2) {
            CamLog.e("Failed to unregister modes. Message : " + e2.getMessage());
        }
    }

    private void saveCapturingModeSortedList(List<CapturingModeAttributes> list) {
        if (CamLog.VERBOSE) {
            CamLog.d("saveCapturingModeList size:" + list.size());
        }
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            CapturingModeAttributes capturingModeAttributes = list.get(i);
            if (capturingModeAttributes.getId() != null) {
                arrayList.add(createUpdateSortOrderOperation(capturingModeAttributes, i));
            } else {
                arrayList.add(createInsertOperation(capturingModeAttributes, i));
            }
        }
        try {
            this.mResolver.applyBatch("com.sonymobile.camerauicommon.provider", arrayList);
        } catch (OperationApplicationException e) {
            CamLog.e("Failed to save mode order. Message : " + e.getMessage());
        } catch (RemoteException e2) {
            CamLog.e("Failed to save mode order. Message : " + e2.getMessage());
        } catch (IllegalArgumentException e3) {
            CamLog.e("Failed to save mode order. Message : " + e3.getMessage());
        }
    }

    public static void register(ContentResolver contentResolver, List<CapturingModeAttributes> list, PackageManager packageManager) {
        CapturingModeCollection capturingModeCollection = new CapturingModeCollection(contentResolver);
        List<CapturingModeAttributes> capturingModeList = capturingModeCollection.getCapturingModeList(new CapturingModeAttributes$InternalCaptureType[0], new CapturingModeAttributes$VisibilityType[0]);
        list.removeAll(findIllegalCapturingMode(packageManager, list));
        List<CapturingModeAttributes> listFindIllegalCapturingMode = findIllegalCapturingMode(packageManager, capturingModeList);
        capturingModeList.removeAll(listFindIllegalCapturingMode);
        capturingModeCollection.unregisterCapturingModes(listFindIllegalCapturingMode);
        boolean z = false;
        for (CapturingModeAttributes capturingModeAttributes : list) {
            if (CamLog.VERBOSE) {
                CamLog.d("register(", " package:", capturingModeAttributes.getPackageName(), " mode:", capturingModeAttributes.getModeName(), " )");
            }
            int iIndexOf = indexOf(capturingModeAttributes, capturingModeList);
            if (iIndexOf == -1) {
                if (CamLog.VERBOSE) {
                    CamLog.d("  This mode has not been registered.");
                }
                capturingModeList.add(capturingModeAttributes);
                if (CapturingModeUtil.hasDefaultSortOrder(capturingModeAttributes)) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("  This mode is pre-installed.");
                    }
                    capturingModeList = CapturingModeUtil.sortCapturingMode(capturingModeList);
                }
            } else {
                if (CamLog.VERBOSE) {
                    CamLog.d("  This mode has been registered.");
                }
                if (isResourceUpdated(capturingModeList.get(iIndexOf), capturingModeAttributes)) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("  This mode is updated.");
                    }
                    capturingModeList.set(iIndexOf, capturingModeAttributes);
                } else if (CamLog.VERBOSE) {
                    CamLog.d("  This mode is not updated, so not need register.");
                }
            }
            z = true;
        }
        if (z) {
            if (CamLog.VERBOSE) {
                CamLog.d("Update data base.");
            }
            capturingModeCollection.saveCapturingModeSortedList(capturingModeList);
        }
    }

    private static int indexOf(CapturingModeAttributes capturingModeAttributes, List<CapturingModeAttributes> list) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).is(capturingModeAttributes.getPackageName(), capturingModeAttributes.getModeName())) {
                return i;
            }
        }
        return -1;
    }

    private static List<CapturingModeAttributes> findIllegalCapturingMode(PackageManager packageManager, List<CapturingModeAttributes> list) {
        ArrayList arrayList = new ArrayList();
        if (packageManager == null) {
            return arrayList;
        }
        for (CapturingModeAttributes capturingModeAttributes : list) {
            if (isIllegalCapturingMode(packageManager, capturingModeAttributes)) {
                CamLog.e(TAG, "This attributes is illegal. [" + capturingModeAttributes.getAttributes() + "]");
                arrayList.add(capturingModeAttributes);
            }
        }
        return arrayList;
    }

    private static boolean isIllegalCapturingMode(PackageManager packageManager, CapturingModeAttributes capturingModeAttributes) {
        Resources resourcesForApplication;
        try {
            resourcesForApplication = packageManager.getResourcesForApplication(capturingModeAttributes.getPackageName());
        } catch (PackageManager$NameNotFoundException unused) {
            resourcesForApplication = null;
        }
        if (resourcesForApplication == null) {
            CamLog.e("Resources could not be found.");
            return true;
        }
        if (!ResourceUtil.isDrawableResource(resourcesForApplication, capturingModeAttributes.getSelectorIconId())) {
            CamLog.e("Resource type of selector icon is not drawable.");
            return true;
        }
        if (!ResourceUtil.isStringResource(resourcesForApplication, capturingModeAttributes.getSelectorLabelId())) {
            CamLog.e("Resource type of selector label is not string.");
            return true;
        }
        if (!ResourceUtil.isStringResource(resourcesForApplication, capturingModeAttributes.getDescriptionLabelId())) {
            CamLog.e("Resource type of description label is not string.");
            return true;
        }
        if (!capturingModeAttributes.isVisibleShortcut()) {
            return false;
        }
        if (!ResourceUtil.isDrawableResource(resourcesForApplication, capturingModeAttributes.getShortcutIconId())) {
            CamLog.e("Resource type of shortcut icon is not drawable.");
            return true;
        }
        if (ResourceUtil.isStringResource(resourcesForApplication, capturingModeAttributes.getShortcutLabelId())) {
            return false;
        }
        CamLog.e("Resource type of shortcut label is not string.");
        return true;
    }

    private static boolean isResourceUpdated(CapturingModeAttributes capturingModeAttributes, CapturingModeAttributes capturingModeAttributes2) {
        return (capturingModeAttributes.getActivityName().equals(capturingModeAttributes2.getActivityName()) && capturingModeAttributes.getSelectorIconId() == capturingModeAttributes2.getSelectorIconId() && capturingModeAttributes.getSelectorLabelId() == capturingModeAttributes2.getSelectorLabelId() && capturingModeAttributes.getShortcutIconId() == capturingModeAttributes2.getShortcutIconId() && capturingModeAttributes.getShortcutLabelId() == capturingModeAttributes2.getShortcutLabelId() && capturingModeAttributes.getInternalCaptureType() == capturingModeAttributes2.getInternalCaptureType() && capturingModeAttributes.isVisibleNormal() == capturingModeAttributes2.isVisibleNormal() && capturingModeAttributes.isVisibleOneshot() == capturingModeAttributes2.isVisibleOneshot() && capturingModeAttributes.isVisibleShortcut() == capturingModeAttributes2.isVisibleShortcut()) ? false : true;
    }
}
