package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class CameraParameterConverter$AeMode {
    CameraParameterConverter$AeMode() {
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static int getApi2Value(String str, String str2) {
        int i;
        int i2;
        byte b;
        int i3;
        i = 6;
        i2 = 4;
        b = -1;
        i3 = 3;
        switch (str2) {
            case "auto":
                int iHashCode = str.hashCode();
                if (iHashCode != -764369746) {
                    if (iHashCode != 3005871) {
                        if (iHashCode != 518043376) {
                            if (iHashCode == 2086525064 && str.equals("shutter-prio")) {
                                b = 2;
                            }
                        } else if (str.equals("iso-prio")) {
                            b = 1;
                        }
                    } else if (str.equals("auto")) {
                        b = 0;
                    }
                } else if (str.equals("semi-auto")) {
                    b = 3;
                }
                switch (b) {
                    case 0:
                        return 2;
                    case 1:
                        break;
                    case 2:
                        i = 10;
                        break;
                    case 3:
                        return 13;
                    default:
                        return 0;
                }
                return i;
            case "off":
                int iHashCode2 = str.hashCode();
                if (iHashCode2 != -764369746) {
                    if (iHashCode2 != 3005871) {
                        if (iHashCode2 != 518043376) {
                            if (iHashCode2 == 2086525064 && str.equals("shutter-prio")) {
                                b = 2;
                            }
                        } else if (str.equals("iso-prio")) {
                            b = 1;
                        }
                    } else if (str.equals("auto")) {
                        b = 0;
                    }
                } else if (str.equals("semi-auto")) {
                    b = 3;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 5;
                    case 2:
                        return 9;
                    case 3:
                        break;
                    default:
                        return 0;
                }
                break;
            case "on":
                int iHashCode3 = str.hashCode();
                if (iHashCode3 != -764369746) {
                    if (iHashCode3 != 3005871) {
                        if (iHashCode3 != 518043376) {
                            if (iHashCode3 == 2086525064 && str.equals("shutter-prio")) {
                                b = 2;
                            }
                        } else if (str.equals("iso-prio")) {
                            b = 1;
                        }
                    } else if (str.equals("auto")) {
                        b = 0;
                    }
                } else if (str.equals("semi-auto")) {
                    b = 3;
                }
                switch (b) {
                    case 0:
                        break;
                    case 1:
                        i3 = 7;
                        break;
                    case 2:
                        i3 = 11;
                        break;
                    case 3:
                        i3 = 14;
                        break;
                    default:
                        return 0;
                }
                return i3;
            case "torch":
                int iHashCode4 = str.hashCode();
                if (iHashCode4 != -764369746) {
                    if (iHashCode4 != 3005871) {
                        if (iHashCode4 != 518043376) {
                            if (iHashCode4 == 2086525064 && str.equals("shutter-prio")) {
                                b = 2;
                            }
                        } else if (str.equals("iso-prio")) {
                            b = 1;
                        }
                    } else if (str.equals("auto")) {
                        b = 0;
                    }
                } else if (str.equals("semi-auto")) {
                    b = 3;
                }
                switch (b) {
                    case 0:
                        break;
                    case 1:
                        break;
                    case 2:
                        break;
                    case 3:
                        break;
                    default:
                        return 0;
                }
                break;
            case "red-eye":
                int iHashCode5 = str.hashCode();
                if (iHashCode5 != -764369746) {
                    if (iHashCode5 != 3005871) {
                        if (iHashCode5 != 518043376) {
                            if (iHashCode5 == 2086525064 && str.equals("shutter-prio")) {
                                b = 2;
                            }
                        } else if (str.equals("iso-prio")) {
                            b = 1;
                        }
                    } else if (str.equals("auto")) {
                        b = 0;
                    }
                } else if (str.equals("semi-auto")) {
                    b = 3;
                }
                switch (b) {
                    case 0:
                        break;
                    case 1:
                        i2 = 8;
                        break;
                    case 2:
                        i2 = 12;
                        break;
                    case 3:
                        break;
                    default:
                        return 0;
                }
                return i2;
            case "display-auto":
                return 15;
            case "display-on":
                return 16;
            default:
                return 0;
        }
    }
}
