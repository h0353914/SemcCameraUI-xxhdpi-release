package com.sonyericsson.android.camera.qrdetection;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.UserManager;
import android.provider.Settings;
import android.util.Patterns;
import android.webkit.URLUtil;
import android.widget.Toast;
import com.sonyericsson.android.camera.R;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder;
import com.sonyericsson.android.camera.view.hint.HintTextQrDetect;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import java.util.Locale;
import java.util.regex.Pattern;

public class CameraNotificationManager implements QrDetectionController.QrResultListener {
    private static final String TAG = "CameraNotificationManager";
    private static final String USER_RESTRICTION_NO_ADD_WIFI_CONFIG = "no_add_wifi_config";
    private static final String GMS_PACKAGE_NAME = "com.google.android.gms";
    private static final Pattern MATTER_QR_CODE_PATTERN = Pattern.compile("MT:[A-Z0-9.-]{19,}");
    private static Boolean sIsGmsMatterSupported;
    private final Context mContext;
    private ViewFinder mViewFinder;

    private enum ParsedResultType {
        URL,
        WIFI,
        MATTER,
        OTHER
    }

    private static class WifiFields {
        private String ssid;
        private String type;
        private String password;
        private boolean hidden;
    }

    private static class ParsedResult {
        private final ParsedResultType type;
        private final String text;
        private final WifiFields wifiFields;

        private ParsedResult(ParsedResultType parsedResultType, String str, WifiFields wifiFields) {
            this.type = parsedResultType;
            this.text = str;
            this.wifiFields = wifiFields;
        }
    }

    public CameraNotificationManager(Context context) {
        this.mContext = context;
    }

    public void setViewFinder(ViewFinder viewFinder) {
        this.mViewFinder = viewFinder;
    }

    @Override // com.sonyericsson.android.camera.qrdetection.QrDetectionController.QrResultListener
    public void onDetectResult(String str) {
        if (CamLog.DEBUG) {
            CamLog.d("QR code detected: " + str);
        }
        handleResult(parseResult(str));
    }

    private ParsedResult parseResult(String str) {
        if (str == null) {
            return new ParsedResult(ParsedResultType.OTHER, str, null);
        }
        if (str.startsWith("WIFI:")) {
            return new ParsedResult(ParsedResultType.WIFI, str, parseWifiFields(str));
        }
        if (isBasicallyValidURL(str)) {
            return new ParsedResult(ParsedResultType.URL, str, null);
        }
        if (isMatterQrCode(str)) {
            return new ParsedResult(ParsedResultType.MATTER, str, null);
        }
        return new ParsedResult(ParsedResultType.OTHER, str, null);
    }

    private static boolean isBasicallyValidURL(String str) {
        return URLUtil.isValidUrl(str) || Patterns.WEB_URL.matcher(str).matches();
    }

    private static boolean isMatterQrCode(String str) {
        return MATTER_QR_CODE_PATTERN.matcher(str).matches();
    }

    /* JADX INFO: Access modifiers changed from: private */
    private static WifiFields parseWifiFields(String str) {
        WifiFields wifiFields = new WifiFields();
        String substring = str.substring("WIFI:".length());
        int length = substring.length();
        int i = 0;
        while (i < length) {
            int indexOf = substring.indexOf(58, i);
            if (indexOf < 0) {
                break;
            }
            String substring2 = substring.substring(i, indexOf);
            StringBuilder sb = new StringBuilder();
            int i2 = indexOf + 1;
            while (i2 < length) {
                char charAt = substring.charAt(i2);
                if (charAt == '\\' && i2 + 1 < length) {
                    sb.append(substring.charAt(i2 + 1));
                    i2 += 2;
                } else if (charAt == ';') {
                    i2++;
                    break;
                } else {
                    sb.append(charAt);
                    i2++;
                }
            }
            String sb2 = sb.toString();
            if ("S".equals(substring2)) {
                wifiFields.ssid = sb2;
            } else if ("T".equals(substring2)) {
                wifiFields.type = sb2;
            } else if ("P".equals(substring2)) {
                wifiFields.password = sb2;
            } else if ("H".equals(substring2)) {
                wifiFields.hidden = "true".equalsIgnoreCase(sb2);
            }
            i = i2;
        }
        return wifiFields;
    }

    private void handleResult(ParsedResult parsedResult) {
        switch (parsedResult.type) {
            case URL:
                notifyQrDetectResult(HintTextQrDetect.MessageType.URL, parsedResult);
                return;
            case WIFI:
                if (parsedResult.wifiFields.ssid == null) {
                    notifyQrDetectResult(HintTextQrDetect.MessageType.WIFI_NOT_SUPPORTED, parsedResult);
                    return;
                } else {
                    notifyQrDetectResult(HintTextQrDetect.MessageType.WIFI, parsedResult);
                    return;
                }
            case MATTER:
                if (isGmsMatterSupported()) {
                    notifyQrDetectResult(HintTextQrDetect.MessageType.MATTER, parsedResult);
                } else {
                    notifyQrDetectResult(HintTextQrDetect.MessageType.OTHER, parsedResult);
                }
                return;
            default:
                notifyQrDetectResult(HintTextQrDetect.MessageType.OTHER, parsedResult);
        }
    }

    private void notifyQrDetectResult(HintTextQrDetect.MessageType messageType, final ParsedResult parsedResult) {
        if (this.mViewFinder == null) {
            return;
        }
        String subMessage;
        HintTextQrDetect.OnClickListener onClickListener;
        switch (messageType) {
            case URL:
                subMessage = this.mContext.getString(
                        R.string.cam_strings_qrcode_detect_text_url_txt,
                        parsedResult.text);
                onClickListener = new HintTextQrDetect.OnClickListener() { // from class: com.sonyericsson.android.camera.qrdetection.CameraNotificationManager.1
                    @Override // com.sonyericsson.android.camera.view.hint.HintTextQrDetect.OnClickListener
                    public void onClick() {
                        CameraNotificationManager.this.openURL(parsedResult.text);
                    }
                };
                break;
            case WIFI:
                subMessage = this.mContext.getString(
                        R.string.cam_strings_qrcode_detect_text_wifi_txt,
                        parsedResult.wifiFields.ssid);
                onClickListener = new HintTextQrDetect.OnClickListener() { // from class: com.sonyericsson.android.camera.qrdetection.CameraNotificationManager.2
                    @Override // com.sonyericsson.android.camera.view.hint.HintTextQrDetect.OnClickListener
                    public void onClick() {
                        CameraNotificationManager.this.handleWifiResult(parsedResult.wifiFields);
                    }
                };
                break;
            case WIFI_NOT_SUPPORTED:
                subMessage = this.mContext.getString(
                        R.string.cam_strings_qrcode_detect_text_wifi_notsupported_txt);
                onClickListener = null;
                break;
            case MATTER:
                subMessage = this.mContext.getString(R.string.cam_strings_qrcode_detect_text_matter_txt);
                onClickListener = new HintTextQrDetect.OnClickListener() { // from class: com.sonyericsson.android.camera.qrdetection.CameraNotificationManager.5
                    @Override // com.sonyericsson.android.camera.view.hint.HintTextQrDetect.OnClickListener
                    public void onClick() {
                        CameraNotificationManager.this.startCommissioning(parsedResult.text);
                    }
                };
                break;
            default:
                subMessage = this.mContext.getString(
                        R.string.cam_strings_qrcode_detect_text_notsupported_txt);
                onClickListener = null;
        }
        this.mViewFinder.sendViewUpdateEvent(ViewFinder.ViewUpdateEvent.EVENT_SHOW_QR_DETECTION_RESULT,
                new HintTextQrDetect(messageType, subMessage, onClickListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void handleWifiResult(final WifiFields wifiFields) {
        if (this.mViewFinder == null) {
            return;
        }
        WifiManager wifiManager = (WifiManager) this.mContext.getSystemService(Context.WIFI_SERVICE);
        if (wifiManager != null && !wifiManager.isWifiEnabled()) {
            this.mViewFinder.showMessageDialog(DialogId.CONNECT_WIFI_SETTING, new Runnable() { // from class: com.sonyericsson.android.camera.qrdetection.CameraNotificationManager.3
                @Override // java.lang.Runnable
                public void run() {
                    CameraNotificationManager.this.openWifiSettings();
                }
            });
            return;
        }
        String formattedSecurityRiskMessage = this.mContext.getString(
                R.string.cam_strings_dialog_body_qrcode_wifi_ready_securityrisk_txt, wifiFields.ssid);
        this.mViewFinder.showMessageDialog(DialogId.APPLICATION_NOTIFICATION_NETWORK, new Runnable() { // from class: com.sonyericsson.android.camera.qrdetection.CameraNotificationManager.4
            @Override // java.lang.Runnable
            public void run() {
                CameraNotificationManager.this.connectWifiNetwork(wifiFields);
            }
        }, formattedSecurityRiskMessage);
    }

    private boolean isAddWifiConfigAllowed() {
        UserManager userManager = (UserManager) this.mContext.getSystemService(Context.USER_SERVICE);
        if (userManager == null) {
            return true;
        }
        Bundle userRestrictions = userManager.getUserRestrictions();
        return userRestrictions == null || !userRestrictions.getBoolean(USER_RESTRICTION_NO_ADD_WIFI_CONFIG, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void connectWifiNetwork(WifiFields wifiFields) {
        if (!isAddWifiConfigAllowed()) {
            CamLog.i("connectWifiNetwork() not allowed by user restriction");
            openWifiSettings();
            return;
        }
        WifiManager wifiManager = (WifiManager) this.mContext.getSystemService(Context.WIFI_SERVICE);
        if (wifiManager == null) {
            return;
        }
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = "\"" + wifiFields.ssid + "\"";
        wifiConfiguration.hiddenSSID = wifiFields.hidden;
        String upperCase = wifiFields.type == null ? "" : wifiFields.type.toUpperCase(Locale.US);
        if ("WEP".equals(upperCase)) {
            wifiConfiguration.wepKeys[0] = "\"" + wifiFields.password + "\"";
            wifiConfiguration.wepTxKeyIndex = 0;
            wifiConfiguration.allowedKeyManagement.set(WifiConfiguration.KeyMgmt.NONE);
            wifiConfiguration.allowedGroupCiphers.set(WifiConfiguration.GroupCipher.WEP40);
            wifiConfiguration.allowedGroupCiphers.set(WifiConfiguration.GroupCipher.WEP104);
        } else if ("WPA".equals(upperCase) || "WPA2".equals(upperCase) || "SAE".equals(upperCase)) {
            wifiConfiguration.preSharedKey = "\"" + wifiFields.password + "\"";
            wifiConfiguration.allowedKeyManagement.set(WifiConfiguration.KeyMgmt.WPA_PSK);
        } else {
            wifiConfiguration.allowedKeyManagement.set(WifiConfiguration.KeyMgmt.NONE);
        }
        int iAddNetwork = wifiManager.addNetwork(wifiConfiguration);
        if (iAddNetwork == -1) {
            CamLog.e("connectWifiNetwork() addNetwork failed");
            openWifiSettings();
            return;
        }
        wifiManager.disconnect();
        wifiManager.enableNetwork(iAddNetwork, true);
        wifiManager.saveConfiguration();
        wifiManager.reconnect();
        Toast.makeText(this.mContext,
                this.mContext.getString(R.string.cam_strings_toast_qrcode_wifi_connect_txt, wifiFields.ssid),
                Toast.LENGTH_SHORT).show();
        openWifiSettings();
    }

    private boolean isGmsMatterSupported() {
        if (sIsGmsMatterSupported == null) {
            Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.google.com/home/matter"))
                    .setPackage(GMS_PACKAGE_NAME);
            sIsGmsMatterSupported = Boolean.valueOf(
                    this.mContext.getPackageManager().resolveActivity(intent, 0) != null);
            if (CamLog.DEBUG) {
                CamLog.d("isGmsMatterSupported: " + sIsGmsMatterSupported);
            }
        }
        return sIsGmsMatterSupported.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void startCommissioning(String str) {
        try {
            this.mContext.startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(str))
                    .setPackage(GMS_PACKAGE_NAME).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
        } catch (ActivityNotFoundException e) {
            CamLog.e("startCommissioning() failed: " + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void openURL(String str) {
        String str2 = str;
        if (!str2.matches("(?i)^[a-z][a-z0-9+.-]*://.*")) {
            str2 = "http://" + str2;
        }
        try {
            this.mContext.startActivity(
                    new Intent(Intent.ACTION_VIEW, Uri.parse(str2)).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
        } catch (ActivityNotFoundException e) {
            CamLog.e("openURL() failed: " + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void openWifiSettings() {
        try {
            this.mContext.startActivity(new Intent(Settings.ACTION_WIFI_SETTINGS)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
        } catch (ActivityNotFoundException e) {
            CamLog.e("openWifiSettings() failed: " + e);
        }
    }
}
