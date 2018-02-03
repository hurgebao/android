.class public Lorg/spongycastle/cert/ocsp/OCSPReq;
.super Ljava/lang/Object;
.source "OCSPReq.java"


# static fields
.field private static final EMPTY_CERTS:[Lorg/spongycastle/cert/X509CertificateHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/spongycastle/cert/X509CertificateHolder;

    sput-object v0, Lorg/spongycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lorg/spongycastle/cert/X509CertificateHolder;

    return-void
.end method
