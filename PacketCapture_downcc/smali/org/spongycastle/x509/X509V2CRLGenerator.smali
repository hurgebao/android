.class public Lorg/spongycastle/x509/X509V2CRLGenerator;
.super Ljava/lang/Object;
.source "X509V2CRLGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/x509/X509V2CRLGenerator$ExtCRLException;
    }
.end annotation


# instance fields
.field private extGenerator:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

.field private tbsGen:Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;

    .line 57
    new-instance v0, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509V2CRLGenerator;->extGenerator:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    .line 58
    return-void
.end method
