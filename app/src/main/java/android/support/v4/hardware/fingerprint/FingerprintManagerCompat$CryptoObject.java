package android.support.v4.hardware.fingerprint;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

public class FingerprintManagerCompat$CryptoObject {
    private final Cipher mCipher;
    private final Mac mMac;
    private final Signature mSignature;

    public FingerprintManagerCompat$CryptoObject(@NonNull Signature signature) {
        this.mSignature = signature;
        this.mCipher = null;
        this.mMac = null;
    }

    public FingerprintManagerCompat$CryptoObject(@NonNull Cipher cipher) {
        this.mCipher = cipher;
        this.mSignature = null;
        this.mMac = null;
    }

    public FingerprintManagerCompat$CryptoObject(@NonNull Mac mac) {
        this.mMac = mac;
        this.mCipher = null;
        this.mSignature = null;
    }

    @Nullable
    public Signature getSignature() {
        return this.mSignature;
    }

    @Nullable
    public Cipher getCipher() {
        return this.mCipher;
    }

    @Nullable
    public Mac getMac() {
        return this.mMac;
    }
}
