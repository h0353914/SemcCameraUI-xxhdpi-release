package android.support.v4.hardware.fingerprint;

public final class FingerprintManagerCompat$AuthenticationResult {
    private final FingerprintManagerCompat$CryptoObject mCryptoObject;

    public FingerprintManagerCompat$AuthenticationResult(FingerprintManagerCompat$CryptoObject fingerprintManagerCompat$CryptoObject) {
        this.mCryptoObject = fingerprintManagerCompat$CryptoObject;
    }

    public FingerprintManagerCompat$CryptoObject getCryptoObject() {
        return this.mCryptoObject;
    }
}
