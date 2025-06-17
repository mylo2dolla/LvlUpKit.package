import SwiftUI

public struct BrickHUDToggle: View {
    @Binding var isOn: Bool
    let label: String
    let onColor: Color
    let offColor: Color
    let action: ((Bool) -> Void)?

    public init(
        isOn: Binding<Bool>,
        label: String,
        onColor: Color = .red,
        offColor: Color = .gray,
        action: ((Bool) -> Void)? = nil
    ) {
        self._isOn = isOn
        self.label = label
        self.onColor = onColor
        self.offColor = offColor
        self.action = action
    }

    public var body: some View {
        Button(action: {
            isOn.toggle()
            action?(isOn)
        }) {
            HStack {
                Circle()
                    .fill(isOn ? onColor : offColor)
                    .frame(width: 24, height: 24)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                    .shadow(color: isOn ? onColor.opacity(0.6) : .clear, radius: 4)
                    .animation(.easeInOut, value: isOn)

                Text(label)
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color.black.opacity(0.6))
            )
        }
        .buttonStyle(.plain)
    }
}
