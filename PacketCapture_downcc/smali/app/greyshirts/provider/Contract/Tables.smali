.class public final Lapp/greyshirts/provider/Contract/Tables;
.super Ljava/lang/Object;
.source "CaptureDatabase.kt"


# static fields
.field private static final CAPTURE:Ljava/lang/String; = "capture"

.field private static final CAPTURESET:Ljava/lang/String; = "captureset"

.field public static final INSTANCE:Lapp/greyshirts/provider/Contract/Tables;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lapp/greyshirts/provider/Contract/Tables;

    invoke-direct {v0}, Lapp/greyshirts/provider/Contract/Tables;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lapp/greyshirts/provider/Contract/Tables;

    .end local p0    # "this":Lapp/greyshirts/provider/Contract/Tables;
    sput-object p0, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    .line 12
    const-string v0, "capture"

    sput-object v0, Lapp/greyshirts/provider/Contract/Tables;->CAPTURE:Ljava/lang/String;

    .line 13
    const-string v0, "captureset"

    sput-object v0, Lapp/greyshirts/provider/Contract/Tables;->CAPTURESET:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCAPTURE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lapp/greyshirts/provider/Contract/Tables;->CAPTURE:Ljava/lang/String;

    return-object v0
.end method

.method public final getCAPTURESET()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lapp/greyshirts/provider/Contract/Tables;->CAPTURESET:Ljava/lang/String;

    return-object v0
.end method
