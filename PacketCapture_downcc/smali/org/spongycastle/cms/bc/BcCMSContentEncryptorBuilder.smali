.class public Lorg/spongycastle/cms/bc/BcCMSContentEncryptorBuilder;
.super Ljava/lang/Object;
.source "BcCMSContentEncryptorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;
    }
.end annotation


# static fields
.field private static keySizes:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0xc0

    const/16 v3, 0x80

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySizes:Ljava/util/Map;

    .line 27
    sget-object v0, Lorg/spongycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySizes:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/spongycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySizes:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/spongycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySizes:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v5}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/spongycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySizes:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSAlgorithm;->CAMELLIA128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/spongycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySizes:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSAlgorithm;->CAMELLIA192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/spongycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySizes:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSAlgorithm;->CAMELLIA256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v5}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
