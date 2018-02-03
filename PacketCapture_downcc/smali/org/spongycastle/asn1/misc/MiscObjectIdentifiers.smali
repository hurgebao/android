.class public interface abstract Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;
.super Ljava/lang/Object;
.source "MiscObjectIdentifiers.java"


# static fields
.field public static final entrust:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final entrustVersionExtension:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeBaseURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCARevocationURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCApolicyURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCertComment:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCertType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeRenewalURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeRevocationURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeSSLServerName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final novell:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final novellSecurityAttribs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisign:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignCzagExtension:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignDnbDunsNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscapeBaseURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCARevocationURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRenewalURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCApolicyURL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscapeSSLServerName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertComment:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.113733.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6.15"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->verisignDnbDunsNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.113719"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.9.4.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->novellSecurityAttribs:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113533.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    sget-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "65.0"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->entrustVersionExtension:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
