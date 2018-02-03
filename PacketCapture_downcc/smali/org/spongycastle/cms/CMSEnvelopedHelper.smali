.class Lorg/spongycastle/cms/CMSEnvelopedHelper;
.super Ljava/lang/Object;
.source "CMSEnvelopedHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;,
        Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;,
        Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;
    }
.end annotation


# static fields
.field private static final BASE_CIPHER_NAMES:Ljava/util/Map;

.field private static final CIPHER_ALG_NAMES:Ljava/util/Map;

.field static final INSTANCE:Lorg/spongycastle/cms/CMSEnvelopedHelper;

.field private static final KEYSIZES:Ljava/util/Map;

.field private static final MAC_ALG_NAMES:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc0

    .line 24
    new-instance v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;

    invoke-direct {v0}, Lorg/spongycastle/cms/CMSEnvelopedHelper;-><init>()V

    sput-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lorg/spongycastle/cms/CMSEnvelopedHelper;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    .line 33
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDE/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDEMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    const-string v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/spongycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const-string v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method
