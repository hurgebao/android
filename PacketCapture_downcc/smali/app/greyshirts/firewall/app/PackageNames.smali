.class public Lapp/greyshirts/firewall/app/PackageNames;
.super Ljava/lang/Object;
.source "PackageNames.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lapp/greyshirts/firewall/app/PackageNames;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pkgs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lapp/greyshirts/firewall/app/PackageNames$1;

    invoke-direct {v0}, Lapp/greyshirts/firewall/app/PackageNames$1;-><init>()V

    sput-object v0, Lapp/greyshirts/firewall/app/PackageNames;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lapp/greyshirts/firewall/app/PackageNames;->pkgs:[Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lapp/greyshirts/firewall/app/PackageNames;->pkgs:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgs"    # [Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lapp/greyshirts/firewall/app/PackageNames;->pkgs:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lapp/greyshirts/firewall/app/PackageNames;
    .locals 1
    .param p0, "pkgs"    # [Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Lapp/greyshirts/firewall/app/PackageNames;

    invoke-direct {v0, p0}, Lapp/greyshirts/firewall/app/PackageNames;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstanceFromCommaList(Ljava/lang/String;)Lapp/greyshirts/firewall/app/PackageNames;
    .locals 1
    .param p0, "pkgList"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/greyshirts/firewall/app/PackageNames;->newInstance([Ljava/lang/String;)Lapp/greyshirts/firewall/app/PackageNames;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lapp/greyshirts/firewall/app/PackageNames;->pkgs:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 24
    iget-object v0, p0, Lapp/greyshirts/firewall/app/PackageNames;->pkgs:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCommaJoinedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    const-string v0, ","

    iget-object v1, p0, Lapp/greyshirts/firewall/app/PackageNames;->pkgs:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lapp/greyshirts/firewall/app/PackageNames;->pkgs:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lapp/greyshirts/firewall/app/PackageNames;->pkgs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 76
    return-void
.end method
