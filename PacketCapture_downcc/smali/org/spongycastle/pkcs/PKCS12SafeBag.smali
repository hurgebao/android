.class public Lorg/spongycastle/pkcs/PKCS12SafeBag;
.super Ljava/lang/Object;
.source "PKCS12SafeBag.java"


# static fields
.field public static final friendlyNameAttribute:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final localKeyIdAttribute:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->friendlyNameAttribute:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->localKeyIdAttribute:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
