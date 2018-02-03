.class public Lorg/spongycastle/cms/CMSAuthenticatedGenerator;
.super Lorg/spongycastle/cms/CMSEnvelopedGenerator;
.source "CMSAuthenticatedGenerator.java"


# instance fields
.field protected authGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

.field protected unauthGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSEnvelopedGenerator;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method protected getBaseParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 3
    .param p1, "contentType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digAlgId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "hash"    # [B

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "param":Ljava/util/Map;
    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "digestAlgID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "digest"

    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v0
.end method
