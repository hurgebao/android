.class public Lorg/spongycastle/cert/path/validations/CRLValidation;
.super Ljava/lang/Object;
.source "CRLValidation.java"

# interfaces
.implements Lorg/spongycastle/cert/path/CertPathValidation;


# instance fields
.field private crls:Lorg/spongycastle/util/Store;

.field private workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/util/Store;)V
    .locals 0
    .param p1, "trustAnchorName"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "crls"    # Lorg/spongycastle/util/Store;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

    .line 25
    iput-object p2, p0, Lorg/spongycastle/cert/path/validations/CRLValidation;->crls:Lorg/spongycastle/util/Store;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/cert/path/validations/CRLValidation;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/cert/path/validations/CRLValidation;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/spongycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lorg/spongycastle/cert/path/validations/CRLValidation;

    iget-object v1, p0, Lorg/spongycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/spongycastle/cert/path/validations/CRLValidation;->crls:Lorg/spongycastle/util/Store;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/cert/path/validations/CRLValidation;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/util/Store;)V

    return-object v0
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 2
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 73
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/cert/path/validations/CRLValidation;

    .line 75
    .local v0, "v":Lorg/spongycastle/cert/path/validations/CRLValidation;
    iget-object v1, v0, Lorg/spongycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

    iput-object v1, p0, Lorg/spongycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/spongycastle/asn1/x500/X500Name;

    .line 76
    iget-object v1, v0, Lorg/spongycastle/cert/path/validations/CRLValidation;->crls:Lorg/spongycastle/util/Store;

    iput-object v1, p0, Lorg/spongycastle/cert/path/validations/CRLValidation;->crls:Lorg/spongycastle/util/Store;

    .line 77
    return-void
.end method
