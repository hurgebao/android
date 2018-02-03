.class public Lorg/spongycastle/asn1/cmp/PKIStatus;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIStatus.java"


# static fields
.field public static final granted:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final grantedWithMods:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final keyUpdateWaiting:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final rejection:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final revocationNotification:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final revocationWarning:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final waiting:Lorg/spongycastle/asn1/cmp/PKIStatus;


# instance fields
.field private value:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->granted:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 21
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->grantedWithMods:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 22
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->rejection:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 23
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->waiting:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 24
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->revocationWarning:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->revocationNotification:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->keyUpdateWaiting:Lorg/spongycastle/asn1/cmp/PKIStatus;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 32
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    .line 33
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "value"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    .line 38
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method
