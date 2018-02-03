.class public Lorg/spongycastle/crypto/tls/AlwaysValidVerifyer;
.super Ljava/lang/Object;
.source "AlwaysValidVerifyer.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([Lorg/spongycastle/asn1/x509/Certificate;)Z
    .locals 1
    .param p1, "certs"    # [Lorg/spongycastle/asn1/x509/Certificate;

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
