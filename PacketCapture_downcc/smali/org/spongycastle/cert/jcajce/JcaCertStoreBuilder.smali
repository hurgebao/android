.class public Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;
.super Ljava/lang/Object;
.source "JcaCertStoreBuilder.java"


# instance fields
.field private certificateConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

.field private certs:Ljava/util/List;

.field private crlConverter:Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

.field private crls:Ljava/util/List;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    .line 25
    new-instance v0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certificateConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 26
    new-instance v0, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crlConverter:Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

    .line 27
    const-string v0, "Collection"

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    return-void
.end method
