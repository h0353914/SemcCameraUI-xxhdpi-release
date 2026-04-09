.class public Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLayoutDirection:I

.field private final mViewPagerSavedState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState$1;

    invoke-direct {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 133
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    iput-object p2, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->mLayoutDirection:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/duolingo/open/rtlviewpager/RtlViewPager$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    .line 126
    iput p2, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->mLayoutDirection:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILcom/duolingo/open/rtlviewpager/RtlViewPager$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->mLayoutDirection:I

    return p0
.end method

.method static synthetic access$300(Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;)Landroid/os/Parcelable;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    iget p0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;->mLayoutDirection:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
