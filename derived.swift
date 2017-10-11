import Foundation
import Files // marathon:https://github.com/JohnSundell/Files.git

do {
    let folder = try Folder(path: "~/Library/Developer/Xcode/DerivedData")
    print("found derived data")

    try folder.makeSubfolderSequence(recursive: true).forEach { f in
        print("Found => Name : \(f.name), parent: \(f.parent?.name ?? "")")
        print("deleting: \(f.name)")
        try f.delete()
        print("Deleted: \(f.name)")
    }
} catch {
    print(error.localizedDescription)
}


